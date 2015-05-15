package com.bozkurt.turkninja.controller;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bozkurt.turkninja.model.Article;
import com.bozkurt.turkninja.model.Category;
import com.bozkurt.turkninja.model.Developer;
import com.bozkurt.turkninja.service.ArticleService;
import com.bozkurt.turkninja.service.DeveloperService;

@Controller
@RequestMapping(value="/users/{username}")
public class DeveloperController {
	@Autowired
	DeveloperService developerService;
	
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String userPage(@PathVariable("username") String username, Model model){
	    try{
		Developer developer=developerService.getDeveloperByUsername(username);
		List<Article> articles=articleService.getArticlesByDeveloperId(developer.getId());
		model.addAttribute("developer", developer);
		model.addAttribute("articles",articles);
	    }catch(IndexOutOfBoundsException ex){
	    	System.out.println("No developer found");
	    	return "noDeveloper";
	    } 
	    model.addAttribute("username", username);
	    Category category1= new Category();
		category1.setId(1);
		category1.setName("Java");
		Category category2= new Category();
		category2.setId(2);
		category2.setName("SQL");
		Category category3= new Category();
		category3.setId(3);
		category3.setName("OpenCV");
		List<Category> categoryList= new ArrayList<Category>();
		categoryList.add(category1);
		categoryList.add(category2);
		categoryList.add(category3);
		model.addAttribute("categoryList",categoryList);
	    return "signed";
	}
	
	@RequestMapping(value="/newArticle",method = RequestMethod.GET)
	public String newArticle(@PathVariable("username") String username,Map<String, Object> model){
		Article article= new Article();
		model.put("article",article);
		Category category1= new Category();
		category1.setId(1);
		category1.setName("Java");
		Category category2= new Category();
		category2.setId(2);
		category2.setName("SQL");
		Category category3= new Category();
		category3.setId(3);
		category3.setName("OpenCV");
		List<Category> categoryList= new ArrayList<Category>();
		categoryList.add(category1);
		categoryList.add(category2);
		categoryList.add(category3);
		model.put("categoryList",categoryList);
		try{
			Developer developer=developerService.getDeveloperByUsername(username);
			model.put("developer", developer);
		    }catch(IndexOutOfBoundsException ex){
		    	System.out.println("No developer found");
		    	return "noDeveloper";
		    } 
		return "newArticle";
		
	}
	
	@RequestMapping(value="/newArticle",method = RequestMethod.POST)
	public String newArticle(@ModelAttribute("article") Article article,@PathVariable("username") String username){
		Developer developer=developerService.getDeveloperByUsername(username);  
		article.setDeveloper(developer);
		Category category= new Category();
		category.setName(article.getCategory().getName());
		category.setId(1);

		Date date = new Date();		
		article.setCreateDate(date);
		article.setLastUpdated(date);
		article.setCategory(category);
		articleService.save(article);
		
		return "redirect:/users/"+username;
		
	}
	
	
}

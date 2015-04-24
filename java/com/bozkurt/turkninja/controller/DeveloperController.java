package com.bozkurt.turkninja.controller;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bozkurt.turkninja.model.Article;
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
		model.addAttribute("developer", developer);
	    }catch(IndexOutOfBoundsException ex){
	    	System.out.println("No developer found");
	    	return "noDeveloper";
	    } 
	    model.addAttribute("username", username);
	    return "signed";
	}
	
	@RequestMapping(value="/newArticle",method = RequestMethod.GET)
	public String newArticle(@PathVariable("username") String username,Map<String, Object> model){
		Article article= new Article();
		model.put("article",article);
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
		Date date = new Date();		
		article.setCreateDate(date);
		article.setLastUpdated(date);	
		articleService.save(article);
		
		return "redirect:/users/"+username;
		
	}
	
	
}

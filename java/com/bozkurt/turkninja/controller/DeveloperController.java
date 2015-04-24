package com.bozkurt.turkninja.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bozkurt.turkninja.model.Developer;
import com.bozkurt.turkninja.service.DeveloperService;

@Controller
public class DeveloperController {
	@Autowired
	DeveloperService developerService;
	
	@RequestMapping(value="/users/{username}")
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
}

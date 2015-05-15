package com.bozkurt.turkninja.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bozkurt.turkninja.model.Developer;
import com.bozkurt.turkninja.service.DeveloperService;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	
	@Autowired
	DeveloperService developerService;
	
	@RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") Developer developer,Map<String, Object> model) {
        System.out.println(developer.getEmail()); 
        Developer signedDeveloper=developerService.login(developer.getEmail(),developer.getPassword()); 
        model.put("userForm", signedDeveloper);
        return "redirect:/users/"+signedDeveloper.getUsername();
    }

}

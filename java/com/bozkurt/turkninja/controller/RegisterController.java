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
@RequestMapping(value = "/register")
public class RegisterController {
	@Autowired
	DeveloperService developerService;

	
    @RequestMapping(method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        Developer userForm = new Developer();    
        model.put("userForm", userForm);
        
        
        return "register";
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") Developer developer,
            Map<String, Object> model) {
         
        developerService.save(developer);
        return "redirect:/users/"+developer.getUsername();
    }
    
    
    
}
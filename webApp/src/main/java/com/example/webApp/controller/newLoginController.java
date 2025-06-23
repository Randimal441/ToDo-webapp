package com.example.webApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class newLoginController {
	

	@RequestMapping(value="/newlogin", method = RequestMethod.GET)
	public String viewLoginPage(ModelMap map) {
		return "newlogin";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String handleLogin(@RequestParam String username,@RequestParam String password, ModelMap model) {
	    
	        if ("admin".equals(username) && "1234".equals(password)) {
	            model.put("username", username);
	            return "welcome";
	        } else {
	            model.put("error", "Invalid Credentials");
	            return "newlogin";
	        }
	    }
	

}

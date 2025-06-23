package com.example.webApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/loginn", method = RequestMethod.GET)
	public String viewLoginPage(ModelMap map) {
		return "login";
	}

}

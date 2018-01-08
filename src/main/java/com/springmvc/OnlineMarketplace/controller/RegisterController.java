package com.springmvc.OnlineMarketplace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.OnlineMarketplace.Bean.User;
import com.springmvc.OnlineMarketplace.Service.UserService;

@Controller
@RequestMapping("/RegisterProcess")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class RegisterController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping
	public String processRegister(@RequestParam String username, @RequestParam String password, @RequestParam String firstname, @RequestParam String lastname, @RequestParam String email, @RequestParam String address, ModelMap model) {
	    String response = userService.register(username, firstname, lastname, password, address, email);
	    if (response == null){
		model.put("response", "Signed up successfully! Please log in.");
		return "login";
	    } else {
		model.put("response", response);		
		return "register";
	    }
	}
	
}

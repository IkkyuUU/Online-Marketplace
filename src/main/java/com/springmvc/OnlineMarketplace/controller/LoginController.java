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
@RequestMapping("/LoginProcess")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping
	public String processLogin(@RequestParam String usernameOrEmail, @RequestParam String password, ModelMap model) {
	    if (userService.loginAuthenticate(usernameOrEmail, password)){
		model.put("response", "Username or password doesn't match");
		return "login";
	    } else {
		return "home";
	    }
	}
	
}

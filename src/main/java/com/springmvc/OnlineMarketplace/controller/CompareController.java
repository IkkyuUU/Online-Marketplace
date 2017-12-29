package com.springmvc.OnlineMarketplace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Service.ProductService;

@Controller
@RequestMapping("/")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class CompareController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/")
	public String showProduct(ModelMap model) {
		Product product = productService.findProductById(1);
		model.addAttribute("product", product);
		return "home";
	}
}

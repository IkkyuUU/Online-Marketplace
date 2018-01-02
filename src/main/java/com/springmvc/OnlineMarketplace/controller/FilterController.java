package com.springmvc.OnlineMarketplace.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.OnlineMarketplace.Bean.ProductCategory;
import com.springmvc.OnlineMarketplace.Bean.ProductSubCategory;
import com.springmvc.OnlineMarketplace.Bean.Specification;
import com.springmvc.OnlineMarketplace.Form.ProductSpecificationForm;
import com.springmvc.OnlineMarketplace.Service.ProductService;

@Controller
@RequestMapping("/filter")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class FilterController {

	@Autowired
	ProductService productService;
	
	@RequestMapping
	public String showProduct(@RequestParam String subId, ModelMap model) {
		
		List<ProductSpecificationForm> pForms = productService.findAllProductAndSpecBySubCategoryId(Integer.parseInt(subId));
		List<Specification> specifications = productService.findAllSpecBySpecIds(productService.findSpecIdByForm(pForms.get(0)));
		ProductSubCategory subCategory = productService.findSubCategoryById(Integer.parseInt(subId));
		ProductCategory category = productService.findProductCategoryById(subCategory.getProductCategoryId());
		model.put("products", pForms);
		model.put("spec", specifications);
		model.put("subCategory", subCategory);
		model.put("category", category);
		return "Filter";
	}
}

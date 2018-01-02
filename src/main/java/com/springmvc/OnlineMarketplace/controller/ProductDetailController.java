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
@RequestMapping("/productDetail")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class ProductDetailController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping
	public String showDetail(@RequestParam String pid, ModelMap model) {
		
		ProductSpecificationForm pForm = productService.findProductAndSpecByProdId(Integer.parseInt(pid));
		List<Specification> specifications = productService.findAllSpecBySpecIds(productService.findSpecIdByForm(pForm));
		ProductSubCategory productSubCategory = productService.findSubCategoryById(pForm.getProduct().getProdSubCategoryId());
		ProductCategory productCategory = productService.findProductCategoryById(productSubCategory.getProductCategoryId());
		model.put("product", pForm);
		model.put("spec", specifications);
		model.put("category", productCategory);
		model.put("subCategory", productSubCategory);
		return "productDetail";
	}
	
}

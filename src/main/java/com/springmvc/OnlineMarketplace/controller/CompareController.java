package com.springmvc.OnlineMarketplace.controller;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

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
@RequestMapping("/compare")
@ComponentScan("com.springmvc.OnlineMarketplace")
public class CompareController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping
	public String showProduct(@RequestParam Map<String, String> map, ModelMap model) {
		int[] pids = new int[map.size()];
		int i = 0;
		for (Entry<String, String> entry : map.entrySet()) {
			pids[i] = Integer.parseInt(entry.getValue());
			i++;
		}
		List<ProductSpecificationForm> pForms = productService.findAllProductAndSpecByProdIds(pids);
		List<Specification> specifications = productService.findAllSpecBySpecIds(productService.findSpecIdByForm(pForms.get(0)));
		ProductSubCategory productSubCategory = productService.findSubCategoryById(pForms.get(0).getProduct().getProdSubCategoryId());
		ProductCategory productCategory = productService.findProductCategoryById(productSubCategory.getProductCategoryId());
		model.put("products", pForms);
		model.put("specifications", specifications);
		model.put("category", productCategory);
		model.put("subCategory", productSubCategory);
		return "Compare";
	}
}

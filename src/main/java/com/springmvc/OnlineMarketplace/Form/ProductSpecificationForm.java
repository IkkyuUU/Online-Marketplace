package com.springmvc.OnlineMarketplace.Form;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;

public class ProductSpecificationForm {
	
	private Product product;
	private List<ProductSpecification> specifications;
	
	public ProductSpecificationForm() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductSpecificationForm(Product product, List<ProductSpecification> specifications) {
		this.product = product;
		this.specifications = specifications;
	}

	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	/**
	 * @return the specifications
	 */
	public List<ProductSpecification> getSpecifications() {
		return specifications;
	}

	/**
	 * @param specifications the specifications to set
	 */
	public void setSpecifications(List<ProductSpecification> specifications) {
		this.specifications = specifications;
	}
	
}

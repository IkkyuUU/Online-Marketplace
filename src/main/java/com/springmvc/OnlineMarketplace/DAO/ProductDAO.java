package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;
import com.springmvc.OnlineMarketplace.Bean.Specification;

public interface ProductDAO {
	
	Product findProductById(int id);
	
	List<Specification> findAllProductSpecById(int id);
	
	ProductSpecification findProdSpecValueById(int prodId, int specId);
	
	List<Product> findAllProduct();
}

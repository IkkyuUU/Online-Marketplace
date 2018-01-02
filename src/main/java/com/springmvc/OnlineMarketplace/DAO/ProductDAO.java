package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.Product;

public interface ProductDAO {
	
	Product findProductById(int id);
	
	List<Product> findProductBySubCategoryId(int subId);
	
	List<Product> findAllProduct();
}

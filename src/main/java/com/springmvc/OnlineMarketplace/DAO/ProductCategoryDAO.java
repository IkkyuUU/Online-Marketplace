package com.springmvc.OnlineMarketplace.DAO;

import com.springmvc.OnlineMarketplace.Bean.ProductCategory;

public interface ProductCategoryDAO {
	
	ProductCategory findCategoryById(int id);
	
}

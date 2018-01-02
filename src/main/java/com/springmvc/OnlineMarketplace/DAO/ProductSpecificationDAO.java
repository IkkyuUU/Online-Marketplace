package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;

public interface ProductSpecificationDAO {
	
	List<ProductSpecification> getAllValByProdId(int id);
}

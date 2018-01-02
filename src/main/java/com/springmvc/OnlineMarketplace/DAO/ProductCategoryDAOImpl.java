package com.springmvc.OnlineMarketplace.DAO;

import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.ProductCategory;

@Repository("productCategoryDAO")
public class ProductCategoryDAOImpl extends AbstractDAO<ProductCategory> implements ProductCategoryDAO {

	@Override
	public ProductCategory findCategoryById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

}

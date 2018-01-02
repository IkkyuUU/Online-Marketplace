package com.springmvc.OnlineMarketplace.DAO;

import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.ProductSubCategory;

@Repository("productSubCategoryDAO")
public class ProductSubCategoryDAOImpl extends AbstractDAO<ProductSubCategory> implements ProductSubCategoryDAO {

	@Override
	public ProductSubCategory findSubCategoryById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

}

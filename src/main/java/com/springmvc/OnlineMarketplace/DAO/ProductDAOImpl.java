package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.Product;

@Repository("productDAO")
public class ProductDAOImpl extends AbstractDAO<Product> implements ProductDAO {
	
	@Override
	public Product findProductById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

	@Override
	public List<Product> findAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> findProductBySubCategoryId(int subId) {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("prodSubCategoryId", subId));
		return criteria.list();
	}

}

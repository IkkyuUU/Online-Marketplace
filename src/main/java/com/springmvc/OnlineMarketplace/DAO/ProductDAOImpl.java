package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;
import com.springmvc.OnlineMarketplace.Bean.Specification;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Product findProductById(int id) {
		// TODO Auto-generated method stub
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	public List<Specification> findAllProductSpecById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductSpecification findProdSpecValueById(int prodId, int specId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> findAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}

}

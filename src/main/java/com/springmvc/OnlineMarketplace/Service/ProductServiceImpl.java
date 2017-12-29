package com.springmvc.OnlineMarketplace.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.DAO.ProductDAO;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDAO productDao;

	@Override
	public Product findProductById(int id) {
		// TODO Auto-generated method stub
		return productDao.findProductById(id);
	}

}

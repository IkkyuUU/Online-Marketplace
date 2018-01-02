package com.springmvc.OnlineMarketplace.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Bean.ProductCategory;
import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;
import com.springmvc.OnlineMarketplace.Bean.ProductSubCategory;
import com.springmvc.OnlineMarketplace.Bean.Specification;
import com.springmvc.OnlineMarketplace.DAO.ProductCategoryDAO;
import com.springmvc.OnlineMarketplace.DAO.ProductDAO;
import com.springmvc.OnlineMarketplace.DAO.ProductSpecificationDAO;
import com.springmvc.OnlineMarketplace.DAO.ProductSubCategoryDAO;
import com.springmvc.OnlineMarketplace.DAO.SpecificationDAO;
import com.springmvc.OnlineMarketplace.Form.ProductSpecificationForm;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDAO productDao;
	
	@Autowired
	SpecificationDAO specificationDao;
	
	@Autowired
	ProductSpecificationDAO productSpecificationDAO;
	
	@Autowired
	ProductCategoryDAO productCategoryDAO;
	
	@Autowired
	ProductSubCategoryDAO productSubCategoryDAO;

	@Override
	public Product findProductById(int id) {
		// TODO Auto-generated method stub
		return productDao.findProductById(id);
	}

	@Override
	public List<ProductSpecificationForm> findAllProductAndSpecByProdIds(int[] ids) {
		// TODO Auto-generated method stub
		List<ProductSpecificationForm> productSpecificationForms = new ArrayList<>();
		for (int id : ids) {
			ProductSpecificationForm productSpecificationForm = new ProductSpecificationForm(productDao.findProductById(id), 
					productSpecificationDAO.getAllValByProdId(id));
			productSpecificationForms.add(productSpecificationForm);
		}
		return productSpecificationForms;
	}

	@Override
	public List<Specification> findAllSpecBySpecIds(List<Integer> ids) {
		// TODO Auto-generated method stub
		return specificationDao.findAllSpecBySpecIds(ids);
	}

	@Override
	public List<Integer> findSpecIdByForm(ProductSpecificationForm productSpecificationForm) {
		// TODO Auto-generated method stub
		List<Integer> specIds = new ArrayList<>();
		for (ProductSpecification productSpecification : productSpecificationForm.getSpecifications()) {
			specIds.add(productSpecification.getId().getSpecId());
		}
		return specIds;
	}

	@Override
	public ProductCategory findProductCategoryById(int id) {
		// TODO Auto-generated method stub
		return productCategoryDAO.findCategoryById(id);
	}

	@Override
	public ProductSubCategory findSubCategoryById(int id) {
		// TODO Auto-generated method stub
		return productSubCategoryDAO.findSubCategoryById(id);
	}

	@Override
	public ProductSpecificationForm findProductAndSpecByProdId(int id) {
		// TODO Auto-generated method stub
		ProductSpecificationForm productSpecificationForm = new ProductSpecificationForm(productDao.findProductById(id),
				productSpecificationDAO.getAllValByProdId(id));
		return productSpecificationForm;
	}

	@Override
	public List<ProductSpecificationForm> findAllProductAndSpecBySubCategoryId(int subId) {
		// TODO Auto-generated method stub
		List<Product> products = productDao.findProductBySubCategoryId(subId);
		List<ProductSpecificationForm> pForms = new ArrayList<>();
		for (Product product : products) {
			pForms.add(new ProductSpecificationForm(product, 
					productSpecificationDAO.getAllValByProdId(product.getProductId())));
		}
		return pForms;
	}
	
	

}

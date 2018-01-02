package com.springmvc.OnlineMarketplace.Service;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.Product;
import com.springmvc.OnlineMarketplace.Bean.ProductCategory;
import com.springmvc.OnlineMarketplace.Bean.ProductSubCategory;
import com.springmvc.OnlineMarketplace.Bean.Specification;
import com.springmvc.OnlineMarketplace.Form.ProductSpecificationForm;

public interface ProductService {
	
	Product findProductById(int id);
	
	List<ProductSpecificationForm> findAllProductAndSpecByProdIds(int[] ids);
	
	ProductSpecificationForm findProductAndSpecByProdId(int id);
	
	List<Integer> findSpecIdByForm(ProductSpecificationForm productSpecificationForm);
	
	List<Specification> findAllSpecBySpecIds(List<Integer> ids);
	
	ProductCategory findProductCategoryById(int subId);
	
	ProductSubCategory findSubCategoryById(int prodId);
	
	List<ProductSpecificationForm> findAllProductAndSpecBySubCategoryId(int subId);
}

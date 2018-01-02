package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.ProductSpecification;

@Repository("productSpecificationDAO")
public class ProductSpecificationDAOImpl extends AbstractDAO<ProductSpecification> implements ProductSpecificationDAO {

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductSpecification> getAllValByProdId(int id) {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("id.productId", id));
		return (List<ProductSpecification>) criteria.list();
	}

}

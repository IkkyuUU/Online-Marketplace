package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.Specification;

@Repository("specificationDAO")
public class SpecificationDAOImpl extends AbstractDAO<Specification> implements SpecificationDAO {

	@Override
	public Specification findSpecById(int id) {
		// TODO Auto-generated method stub
		return getByKey(id);
	}

	@Override
	public List<Specification> findAllSpecBySpecIds(List<Integer> sids) {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		Criterion[] rest = new Criterion[sids.size()];
		for (int i = 0; i < sids.size(); i++) {
			rest[i] = Restrictions.eq("specId", sids.get(i));
		}
		criteria.add(Restrictions.or(rest));
		return criteria.list();
	}

}

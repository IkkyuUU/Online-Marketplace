package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.Specification;

public interface SpecificationDAO {
	
	Specification findSpecById(int id);
	
	List<Specification> findAllSpec();
	
}

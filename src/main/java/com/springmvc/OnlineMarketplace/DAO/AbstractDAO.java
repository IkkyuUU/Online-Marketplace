package com.springmvc.OnlineMarketplace.DAO;

import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractDAO<T> {
	
	@SuppressWarnings("rawtypes")
	private final Class persistentClass;
	
	@SuppressWarnings("rawtypes")
	public AbstractDAO() {
		// TODO Auto-generated constructor stub
		this.persistentClass = (Class)((ParameterizedType) 
				this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public T getByKey(int key) {
		return (T) getSession().get(persistentClass, key);
	}
	
	protected Criteria createEntityCriteria() {
		return getSession().createCriteria(persistentClass);
	}
}

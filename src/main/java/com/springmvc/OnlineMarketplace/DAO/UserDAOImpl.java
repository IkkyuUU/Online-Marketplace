package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.springmvc.OnlineMarketplace.Bean.User;

@Repository("UserDAO")
public class UserDAOImpl extends AbstractDAO<User> implements UserDAO {
	
    @Override
    public User findUserById(int id){
	// TODO Auto-generated method stub
	return getByKey(id);
    }

    @Override
    public List<User> findAllUser() {
	// TODO Auto-generated method stub
	return null;
    }

    @Override
    public User findUserByUserName(String userName){
	// TODO Auto-generated method stub
	Criteria criteria = createEntityCriteria();
	Criterion crUserName = Restrictions.eq("userName", userName);
	criteria.add(crUserName);
	return (User) criteria.uniqueResult(); //todo: is explicit conversion required general for cirteira's regurn? why not criteria.list() in productDAOImpl.java?
    }
    
    @Override
    public User findUserByEmail(String email){
	// TODO Auto-generated method stub
	Criteria criteria = createEntityCriteria();
	Criterion crEmail = Restrictions.eq("email", email);
	criteria.add(crEmail);
	return (User) criteria.uniqueResult();
    }
    
    @Override
    public User findUserByUserNameAndPassword(String userName, String password){
	// TODO Auto-generated method stub
	Criteria criteria = createEntityCriteria();
	Criterion crUserName = Restrictions.eq("userName", userName);
	Criterion crPassword = Restrictions.eq("password", password);		
	criteria.add(Restrictions.and(crUserName, crPassword));
	return (User) criteria.uniqueResult();
    }
    
    @Override
    public User findUserByEmailAndPassword(String email, String password){
	// TODO Auto-generated method stub
	Criteria criteria = createEntityCriteria();
	Criterion crEmail = Restrictions.eq("email", email);
	Criterion crPassword = Restrictions.eq("password", password);		
	criteria.add(Restrictions.and(crEmail, crPassword));
	return (User) criteria.uniqueResult();
    }

    @Override
    public void insertUserRecord(String userName, String firstName, String lastName, String password, String address, String email){
	User user = new User(userName, firstName, lastName, password, address, email);
	insertRecord(user);
    }

}

package com.springmvc.OnlineMarketplace.DAO;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.User;

public interface UserDAO {
	
    User findUserById(int id);

    List<User> findAllUser();

    User findUserByUserName(String userName);
    
    User findUserByEmail(String email);

    User findUserByUserNameAndPassword(String userName, String password);

    User findUserByEmailAndPassword(String email, String password);        
    
    void insertUserRecord(String userName, String firstName, String lastName, String password, String address, String email);
}

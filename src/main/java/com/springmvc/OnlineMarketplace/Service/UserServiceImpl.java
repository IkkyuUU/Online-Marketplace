package com.springmvc.OnlineMarketplace.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springmvc.OnlineMarketplace.Bean.User;
import com.springmvc.OnlineMarketplace.DAO.UserDAO;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	
    @Autowired
    UserDAO userDao; // TODO: not private?
	
    @Override
    public User findUserById(int id) {
	// TODO Auto-generated method stub
	return userDao.findUserById(id);
    }

    @Override
    public boolean loginAuthenticate(String userNameOrEmail, String password){
	// TODO Auto-generated method stub	
	User user;
	if (Pattern.compile(".*@.*").matcher("userNameOrEmail").matches()){ // email
	    user = userDao.findUserByUserNameAndPassword(userNameOrEmail, password);
	} else { // username
	    user = userDao.findUserByEmailAndPassword(userNameOrEmail, password);
	}

	if (user == null){
	    return false;
	} else {
	    return true;
	}
    }

    @Override
    public String register(String userName, String firstName, String lastName, String password, String address, String email){

	if (userDao.findUserByUserName(userName) != null){
	    return "The username has been used. Please try another one.";
	}

	if (userDao.findUserByEmail(email) != null){
	    return "The email address has been used. Please try another one.";
	}

	userDao.insertUserRecord(userName, firstName, lastName, password, address, email);
	return null; // "Signed up successfully!"
    }

}

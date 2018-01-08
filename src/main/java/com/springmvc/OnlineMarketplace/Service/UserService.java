package com.springmvc.OnlineMarketplace.Service;

import java.util.List;

import com.springmvc.OnlineMarketplace.Bean.User;

public interface UserService {
	
    User findUserById(int id);

    boolean loginAuthenticate(String userNameOrEmail, String password);

    String register(String userName, String firstName, String lastName, String password, String address, String email);    
	
}

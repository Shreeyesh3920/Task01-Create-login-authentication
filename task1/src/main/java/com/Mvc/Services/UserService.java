package com.Mvc.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Mvc.DAO.UserDao;
import com.Mvc.Entities.User;


@Service
public class UserService {

	@Autowired
	private UserDao userdao;
	public int createUser(User user) 
	{
		return this.userdao.saveUser(user);
	}
	
	public boolean checkLogin(String username, String psw){
        System.out.println("Checking User Info");
        return this.userdao.validate(username, psw);
 }
	
}

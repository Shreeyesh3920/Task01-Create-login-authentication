package com.Mvc.DAO;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Mvc.Entities.User;


@Repository
public class UserDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	@Transactional
	public int saveUser(User user)
	{	
		int id=(Integer)this.hibernateTemplate.save(user);
		System.out.println("REGISTERED!");
		return id;
	}
	
	@Transactional
	public boolean validate(String uname,String psw) 
	{	
		boolean userFound =true;
		
		return userFound;                  
		       
	}
}

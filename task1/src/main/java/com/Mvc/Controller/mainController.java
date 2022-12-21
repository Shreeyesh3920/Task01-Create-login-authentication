package com.Mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Mvc.Entities.User;
import com.Mvc.Services.UserService;


@Controller
public class mainController {


	@RequestMapping("/login")
	public String loginController(){
		System.out.println("Running");
		return "Login";
}
	

	@RequestMapping("/register")
	public String registerController(){
		return "Registration";
	}
	
	@RequestMapping("/dash")
	public String dashController(){
		return "dash";
	}
	

	 	@Autowired
		private UserService userservice;
		
		@RequestMapping(value="/registerprocess", method=RequestMethod.POST)
		public String registerProcessController(@ModelAttribute User user){
			this.userservice.createUser(user);
			return "Login";
		}
		
		
		
		@RequestMapping(value="/loginprocess", method=RequestMethod.POST)
		public String loginprocessController(@RequestParam("username")String uname,@RequestParam("pwd")String pwd,Model model) 
		{
			boolean userExists=this.userservice.checkLogin(uname, pwd);
			if(userExists){
				model.addAttribute("username",uname);
				return "dash";
			}
			else{
				return "Login";
			}
		}
		
		
		
}	
		

	

package com.klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.entity.users;
import com.klu.repository.UserRepository;

@Service
public class Usermodel {
	
	@Autowired
	UserRepository ur;
	
	public String register(users u) {
		String s ;
		try {
		ur.save(u);
		s = "sucessfully register";
		}
		catch(Exception e)
		{
			s = e.getMessage();
		}
		return s;
	}
	
   public String login(String user,String pass)
   {
	   try {
	   return ur.loginuser(user,pass);
	   }
	   catch(Exception e)
	   {
		   return null;
	   }
   }

}

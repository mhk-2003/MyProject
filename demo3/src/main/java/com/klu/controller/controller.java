package com.klu.controller;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.entity.users;
import com.klu.model.Usermodel;

@RestController
@RequestMapping("/api")
public class controller {
     
	@Autowired
	Usermodel um;
	
	public static String name;
	
	@PostMapping("/userRegister")
	public String UserRegister(@RequestBody users u)
	{
		String p = um.register(u);
		if(p == "sucessfully register")
		{
			return p;
		}
		else
			return p;
	}
	
	@GetMapping("/LoginUser/{name}/{pass}")
	public String Login(@PathVariable("name") String name,@PathVariable("pass") String pass)
	{
		String p = um.login(name,pass);
		if(p!=null)
		{
			name = p;
			return p;
		}
		else
			return "fail";
	}
	
}

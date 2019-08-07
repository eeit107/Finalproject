package com.web.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;

@Component
public class CurrentUser {

	@Autowired
	UserService userService;
	
	public String getUserId() {
		try {
			User user =(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			return user.getUsername();
			
		} catch (Exception e) {
			return null;
		}

	}
	
	public ShopmemberBean getShopmemberBean() {
		System.out.println("getUserId  :"+getUserId());
		if(getUserId() != null) {
			return userService.findByAccount(getUserId());
		}
		return null;
	}
	public String getUserRole() {
		if(getUserId() != null) {
			ShopmemberBean user = userService.findByAccount(getUserId());
			return user.getRole();
		}
		return null;
	}
	public String getUserimg() {
		if(getUserId() != null) {
			ShopmemberBean user = userService.findByAccount(getUserId());
			return user.getUserImage();
		}
		return null;
	}
	

}

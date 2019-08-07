package com.web.store.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;


@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	//註冊
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public ModelAndView doAddUser(
			@RequestParam(value = "memberid") String memberid,
			                      @RequestParam(value = "password") String password, 
			                      @RequestParam(value="userImage")MultipartFile userImage
			                      ) {
		System.out.println(memberid);
     
		ShopmemberBean bean = new ShopmemberBean();
		bean.setMemberid(memberid);
		bean.setPassword(password);
		bean.setRole("user");

		if(userImage != null && !userImage.isEmpty()) {
		String img;
		try {
			img = userService.servImg(userImage);
			bean.setUserImage(img);
			userService.saveMember(bean);
		} catch (Exception e) {
			
			e.printStackTrace();
		}	
		}
		 
		
		
//		userService.saveMember(bean);
//		
		System.out.println("*finish*");
		return new ModelAndView("redirect:/login");
//		return new ModelAndView("redirect:/");
	}


}

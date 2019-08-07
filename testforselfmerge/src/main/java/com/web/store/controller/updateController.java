package com.web.store.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.formbean.UserFormBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;
import com.web.utils.BaseConstants;
import com.web.utils.CurrentUser;

@Controller
@SessionAttributes("memberid")  
public class updateController {

	@Autowired
	ServletContext context;
	
	@Autowired
	UserService userService;
	
	@Autowired
	CurrentUser currentUser;

	
	@RequestMapping("/user-details")
	@PreAuthorize("hasAnyAuthority('user','admin')")
	public String userDetails(Model model,HttpSession session) {
		ShopmemberBean sb=currentUser.getShopmemberBean();
		String row =sb.getRole();
		if(row.equals("company"))
			sb=null;
		model.addAttribute("login",sb );
	session.setAttribute("login", sb);
	
	System.out.println("login:"+sb);
	System.out.println(session +"update");
		return "user-details";
	}
	
	@PreAuthorize("hasAuthority('user')")
	@RequestMapping(value="/update",method=RequestMethod.GET )
	public String Update(Model model) {
		model.addAttribute("memberbean", currentUser.getShopmemberBean());		
		return "/user-details1";
		
	}
	
	@PreAuthorize("hasAuthority('user')")
	@RequestMapping(value="/doUpdate",method=RequestMethod.POST)
	public String addupdate(@ModelAttribute UserFormBean formbean) {
		
		ShopmemberBean bean = userService.findByAccount(currentUser.getUserId());

		bean.setUsername(formbean.getUsername());
		bean.setPassword(formbean.getPassword());
		bean.setEmail(formbean.getEmail());
		bean.setPhone(formbean.getPhone());
		bean.setGender(formbean.getGender());
		bean.setAge(formbean.getAge());
		bean.setJobs(formbean.getJobs());
		bean.setEducation(formbean.getEducation());
		userService.update(bean);
		
		return "redirect:/user-details";
	}
	@RequestMapping(value="/forgetPassword",method=RequestMethod.GET )
	public String forgetPassword(Model model) {
		model.addAttribute("memberbean", currentUser.getShopmemberBean());		
		return "/forgetPassword";
		
	}
	
	@RequestMapping("/usericon")
	public void showPicture(HttpServletResponse response) {
		String path= BaseConstants.imageFilePath;
		
		ShopmemberBean bean = userService.findByAccount(currentUser.getUserId());

		File imgFile = new File(path + "/" + bean.getUserImage());
		responseFile(response, imgFile);
	}

	private void responseFile(HttpServletResponse response, File imgFile) {
		try (InputStream is = new FileInputStream(imgFile); OutputStream os = response.getOutputStream();) {
			byte[] buffer = new byte[1024];
			while (is.read(buffer) != -1) {
				os.write(buffer);
			}
			os.flush();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}
}

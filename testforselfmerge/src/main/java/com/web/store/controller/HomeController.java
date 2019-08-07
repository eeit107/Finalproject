package com.web.store.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.AdvertiseBeanService;
import com.web.store.service.ProductBeanService;
import com.web.utils.CurrentUser;

@Controller

public class HomeController {

	@Autowired
	CurrentUser currentUser;
	@Autowired
	ProductBeanService service;
//	@Autowired
//	CellBeanService service1;
	@Autowired
	AdvertiseBeanService service2;
	
	@RequestMapping("/header")
	public String header(Model model, HttpSession session) {
		model.addAttribute("title", "歡迎蒞臨君雅網路商城!!!");
		model.addAttribute("subtitle", "網路上獨一無二的購物天堂");
		return "header";
	}
	@RequestMapping("/backheader")
	public String backheader(Model model) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "backheader";
	}

	@PreAuthorize("hasAuthority('company')")
	@RequestMapping("/back2")
	public String back2(Model model ,HttpSession session) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "back2";
	}


//	@RequestMapping("/index")
//	public String index(Model model ,HttpSession session) {
//		model.addAttribute("title", "");
//		model.addAttribute("subtitle", "");
//		ShopmemberBean sb=currentUser.getShopmemberBean();
//		session.setAttribute("login", sb);
//		session.setAttribute("memberbean", sb);
//		return "index";
//	}

	@RequestMapping(value= "/")
	public String index2(Model model,HttpSession session) {
		
//		ShopmemberBean sb=currentUser.getShopmemberBean();
//	System.out.println(sb);
//		System.out.println("00000000000");
//		session.setAttribute("memberbean", sb);
//		model.addAttribute("", sb);
		return "index2";
	}
	
//	@RequestMapping(value= "/index2")
//	public String index(Model model,HttpSession session) {
//		System.out.println("00000000000");
//		ShopmemberBean sb=currentUser.getShopmemberBean();
//		System.out.println(sb);
//	session.setAttribute("login", sb);
//		return "index2";
//	}
	@RequestMapping("/admin")
	public String admin(Model model) {

		return "admin";
	}



	
	@RequestMapping("/company")
	public String compan(Model model) {
		return "company";
	}
	
	@RequestMapping("/welcome")
	public String welcome(Model model) {
		model.addAttribute("title", "歡迎蒞臨君雅網路商城!!!");
		model.addAttribute("subtitle", "網路上獨一無二的購物天堂");
		return "welcome";
	}

	@RequestMapping("/back")
	public String back(Model model) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "back";
	}

//	@RequestMapping("/")
//	public String home() {
//		return "index";
//	}

	
	@RequestMapping("/backadmin")
	public String backadmin(Model model) {
		model.addAttribute("title", "");
		model.addAttribute("subtitle", "");
		return "backadmin";
	}
	@RequestMapping("/charts")
	public String charts(Model model) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "charts";
	}
	
	

	@RequestMapping("/productupdate")
	public String list(Model model) {
		List<ProductBean> product = service.getAllProducts();
		model.addAttribute("products", product);

		return "productupdate";
	}

	@RequestMapping("/productview")
	public String getProductById(@RequestParam("id") Integer id, Model model) {
		ProductBean bb = service.getProductById(id);
		System.out.println(bb);
		model.addAttribute("product", service.getProductById(id));

//		if (bb != null) {
//			CellBean cellphone = service1.getCellphoneById(id);
//
//			model.addAttribute("cellBean", cellphone);
//			System.out.println("setcontroller: " + cellphone);
//		}

		return "productview";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}

	@RequestMapping("/signin")
	public String signin(Model model) {
		return "signin";
	}

}

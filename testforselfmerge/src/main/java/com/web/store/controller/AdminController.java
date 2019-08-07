package com.web.store.controller;

import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.cartservice.cartService;
import com.web.store.model.CartBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.ProductBeanService;
//import com.web.store.service.UserBeanService;
import com.web.store.service.UserService;
@Controller
public class AdminController {
	
	@Autowired
	UserService UserService;
	@Autowired
	ProductBeanService service;
	@Autowired
	cartService cartService;
	

	
//  跳轉頁面到admin	
	@RequestMapping(value = "/admin",
			        method = RequestMethod.GET)
	public String admin(Model model) {
		return "admin";
	}
//  一般畫面顯示，搜尋全會員
	@RequestMapping("/adminmembers")
	public String list(Model model) {
		List<ShopmemberBean> list = UserService.selectAll();
		model.addAttribute("allMembers", list);

		return "adminmembers";
	}
//	單一會員明細
	@RequestMapping("/adminmember")
	public String getMemberById(@RequestParam("id") Integer seqNo, Model model) {
		
	   model.addAttribute("member", UserService.findByPK(seqNo));
	   return "adminmember";
	   
	}
//	會員刪除
	@RequestMapping(value = "/delete_m", 
			        method = RequestMethod.GET)
	 public String delete(@ModelAttribute("id") Integer seqNo) {
		UserService.delete(seqNo);
		return "redirect:/adminmembers";
	}
//	搜尋全產品
	@RequestMapping("/adminproducts")
	public String listPro(Model model) {
		List<ProductBean> list = service.getAllProducts();
	
	
	
		model.addAttribute("products", list);

		return "adminproducts";
	}
//	產品刪除
	@RequestMapping(value = "/delete_p", 
			        method = RequestMethod.GET)
	public String delete_p(@ModelAttribute("id") Integer id) {
		service.deleteProductBean(id); 	 
	
		return "redirect:/adminproducts";

	}	
//        跳轉頁面到pView
		@RequestMapping(value = "/adminpView",method = RequestMethod.GET)
		public String orderlist(Model model) {
			return "adminpView";
		}

		// 所有訂單查詢
		@RequestMapping(value = "/allorders", method = RequestMethod.POST)
		public String allorderlist(Model model) {
			List<CartBean> list = cartService.getAllCarts();
			model.addAttribute("allorders", list);
			return "adminpView";
		}

//		 指定日訂單
		@RequestMapping(value = "/choseday", method = RequestMethod.POST)
		public String orderlist(Model model, @RequestParam(value = "orderdate") String orderdate,
				HttpServletRequest request) {
			System.out.println("findtime" + orderdate);
//				Date orderdate = new Date();
//				java.sql.Date sqlDate = new java.sql.Date(orderdate.getTime());

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = null;
			try {
				date = sdf.parse(orderdate);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			System.out.println(orderdate + "=" + "---");
			List<CartBean> list = cartService.getSellday(date);

			model.addAttribute("allorders", list);
			System.out.println("findday" + list);
			if (list == null) {

			}
			return "adminpView";
		}

		// 範圍訂單
		@RequestMapping(value = "/chosedays", method = RequestMethod.POST)
		public String rangeorder(Model model, @RequestParam(value = "datefirst") String datefirst,
				@RequestParam(value = "dateend") String dateend, HttpServletRequest request) {
			System.out.println("findtimefrist" + datefirst);
			System.out.println("findtimeend" + dateend);
			SimpleDateFormat sdffirst = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat sdfend = new SimpleDateFormat("yyyy-MM-dd");
			Date datef = null;
			Date datee = null;
			try {
				datef = sdffirst.parse(datefirst);
				datee = sdfend.parse(dateend);
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			System.out.println("datef" + "=" + datef);
			System.out.println("datee" + "=" + datee);
			List<CartBean> list = cartService.getrangeSellday(datef, datee);

			model.addAttribute("allorders", list);
			System.out.println("findday" + list);
			if (list == null) {

			}
			return "adminpView";
		}

}

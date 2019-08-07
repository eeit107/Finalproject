package com.web.store.controller;


import java.io.UnsupportedEncodingException;
import java.sql.Blob;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.CartBean;
import com.web.store.model.CustomerInfoBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.AdvertiseBeanService;
import com.web.store.service.CustomerInfoBeanService;
import com.web.store.service.ProductBeanService;
import com.web.store.service.UserService;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutOneTime;
import ecpay.payment.integration.domain.InvoiceObj;
import ecpay.payment.integration.exception.EcpayException;



@Controller
public class AdvertiseController {

//	@Autowired
//	CellBeanService service1;
	@Autowired
	ProductBeanService service;
//	@Autowired
//	ImageBeanService service3;
	@Autowired
	AdvertiseBeanService adservice;
	@Autowired
	CustomerInfoBeanService ciservice;
	@Autowired
	UserService userService;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "/advertise", method = RequestMethod.GET)
	public String getAddNewProductForm2( Model model) {

			AdvertiseBean cc = new AdvertiseBean();
			
				model.addAttribute("advertiseBean", cc);
		
		return "advertise";
	}

	@RequestMapping(value = "/advertise", method = RequestMethod.POST)
	public String insert( @ModelAttribute("advertiseBean") AdvertiseBean adv,
					BindingResult result, HttpServletRequest request,
					HttpSession session,Model model) {
			String[] suppressedFields = result.getSuppressedFields();
			if (suppressedFields.length > 0) {
				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
			}
			HashMap<String, String> errorMsgMap = new HashMap<String, String>();
			model.addAttribute("ErrorMsgKey", errorMsgMap);
			ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");
			System.out.println("info1 addproducts"+info1);	
		
		
	       adv.setCompanyId(info1.getSeqNo());
	       adv.setStatus("廣告刊登中");
	       adv.setOpenandclose(1);
	       adv.setClick(0);
	       adv.setPrice(0.0);
	       if(adv.getAdrole()==1) {
	    	   adv.setAdroletext("banner廣告");
	       }else {
	    	   adv.setAdroletext("下方欄位廣告");
	       }
	       if(adv.getProductId()==-1) {
	    	   errorMsgMap.put("notnull", "請選擇產品名稱");
//	    	   System.out.println(errorMsgMap);
	    	   return "advertise";
	       }else {
		   adservice.save(adv);
	       }
		   return "redirect:/advertiselist";  
	}
	
	@RequestMapping(value = "/advertise1", method = RequestMethod.GET)
	public String Productimageupdate( Model model) {

			ProductBean bb = new ProductBean();
			
				model.addAttribute("productBean", bb);
		
		return "advertise";
	}
	
	
	
//	@RequestMapping(value = "/advertise1", method = RequestMethod.POST)
//	public String insert( @ModelAttribute("productBean") ProductBean bb,
//					BindingResult result, HttpServletRequest request,
//					HttpSession session,Model model) {
//			String[] suppressedFields = result.getSuppressedFields();
//			if (suppressedFields.length > 0) {
//				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//			}
//			MultipartFile productImage6 = bb.getProductImage4();
//			String originalFilename6 = productImage6.getOriginalFilename();//抓檔名
//			bb.setFileName6(originalFilename6);//抓檔名
//
//			String ext6 = originalFilename6.substring(originalFilename6.lastIndexOf("."));
//			String rootDirectory6 = context.getRealPath("/");
//					
//			// 建立Blob物件，交由 Hibernate 寫入資料庫
//			if (productImage6 != null && !productImage6.isEmpty()) {
//				try {
//					byte[] b = productImage6.getBytes();
//					Blob blob = new SerialBlob(b);
//					bb.setImage4(blob);
//				} catch (Exception e) {
//					e.printStackTrace();
//					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//				}
//			}
//		service.update(bb);
//	      
//		   return "redirect:/advertiselist";  
//	}
//	@RequestMapping(value = "/advertisebanner", method = RequestMethod.GET)
//	public String insertbanner( Model model) {
//
//			AdvertiseBean cc = new AdvertiseBean();
////			ProductBean bb = new ProductBean();
//				model.addAttribute("advertiseBean", cc);
////				model.addAttribute("productBean", bb);
//		
//		return "advertisebanner";
//	}
//
//	@RequestMapping(value = "/advertisebuybanner", method = RequestMethod.POST)
//	public String insert1( @ModelAttribute("advertiseBean") AdvertiseBean adv,
//					BindingResult result, HttpServletRequest request,
//					HttpSession session,Model model) {
//			String[] suppressedFields = result.getSuppressedFields();
//			if (suppressedFields.length > 0) {
//				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//			}
//			HashMap<String, String> errorMsgMap = new HashMap<String, String>();
//			model.addAttribute("ErrorMsgKey", errorMsgMap);
//			ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");
//			System.out.println("info1 addproducts"+info1);
//			
//	       adv.setCompanyId(info1.getSeqNo());
//	       adv.setStatus("廣告刊登中");
//	       if(adv.getProductId()==-1) {
//	    	   errorMsgMap.put("notnull", "請選擇產品名稱");
////	    	   System.out.println(errorMsgMap);
//	    	   return "advertise";
//	       }else {
//		   adservice.save(adv);
//	       }
//		   return "redirect:/advertisebuybanner";  
//	}
//	
////
//	@RequestMapping(value = "/advertise", method = RequestMethod.POST)
//	public String update( @ModelAttribute("advertiseBean") AdvertiseBean adv,
//			@ModelAttribute("id") Integer aDid,
//					BindingResult result, HttpServletRequest request,
//					HttpSession session) {
//			String[] suppressedFields = result.getSuppressedFields();
//			if (suppressedFields.length > 0) {
//				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//			}	       
//		   adservice.update(adv);
//		   
//		   return "redirect:/advertise";  
//	}
	@InitBinder
	public void whiteListing(WebDataBinder binder) {
		binder.setAllowedFields("productId",
				"addiscription" ,
				"qty" , 
				"click" , 
				"price" , 
				"spend" , 
				"budget" , 
				"companyId" , 
				"adId",
				"status",
				"campaigndate",
				"advertiseBean",
				"adrole"
				);
		}
		@ModelAttribute("productList")
		public Map<Integer, String> getAllProducts() {
			Map<Integer, String> productMap = new HashMap<>();
			List<ProductBean> list = service.getAllProducts();
			for (ProductBean cb1 : list) {
				productMap.put(cb1.getProductId(), cb1.getTitle());
			}
//			System.out.println("productMap "+productMap);
			return productMap;
		}
		
		@RequestMapping(value = "/index2", method = RequestMethod.GET)
		public String index2(Model model) {			
			List<AdvertiseBean> list=adservice.getTop3highCpc();
			System.out.println("top3incpc"+list);			
			if(list.size()>2) {
				int	pI1=list.get(0).getAdId();
				int pI2=list.get(1).getAdId();
				int	pI3=list.get(2).getAdId();
				int	p1=list.get(0).getProductId();
				int p2=list.get(1).getProductId();
				int	p3=list.get(2).getProductId();
					System.out.println("pI 陣列直"+pI1);
					System.out.println("pI 陣列直"+pI2);
					System.out.println("pI 陣列直"+pI3);
			model.addAttribute("product", service.getProductById(p1));
			model.addAttribute("product1", service.getProductById(p2));
			model.addAttribute("product2", service.getProductById(p3));		
			model.addAttribute("advertise", adservice.getAdvertiseById(pI1));
			model.addAttribute("advertise1", adservice.getAdvertiseById(pI2));
			model.addAttribute("advertise2", adservice.getAdvertiseById(pI3));
			return "index2";
	}else {		
			model.addAttribute("product", service.getProductById(1));
			model.addAttribute("product1", service.getProductById(2));
			model.addAttribute("product2", service.getProductById(3));			
			return "index2";
	}
 }
		
		
		@RequestMapping(value = "/tobanner", method = RequestMethod.POST)
		@ResponseBody
		public List<AdvertiseBean> tobanner() {
			
			List<AdvertiseBean> list1=adservice.getTop3highCpcforbanner();
			System.out.println("Gettop3forbannner "+list1);
//		if(list.size()>2) {
//			int	pI1=list.get(0).getAdId();
//			int pI2=list.get(1).getAdId();
//			int	pI3=list.get(2).getAdId();
//			int	p1=list.get(0).getProductId();
//			int p2=list.get(1).getProductId();
//			int	p3=list.get(2).getProductId();
//				System.out.println("pI 陣列直"+pI1);
//				System.out.println("pI 陣列直"+pI2);
//				System.out.println("pI 陣列直"+pI3);
//
//			model.addAttribute("product4", service.getProductById(p1));
//			model.addAttribute("product5", service.getProductById(p2));
//			model.addAttribute("product6", service.getProductById(p3));		
//			model.addAttribute("advertise4", adservice.getAdvertiseById(pI1));
//			model.addAttribute("advertise5", adservice.getAdvertiseById(pI2));
//			model.addAttribute("advertise6", adservice.getAdvertiseById(pI3));
			return list1;
		}
//		}else {
//			
//			model.addAttribute("product4", service.getProductById(1));
//			model.addAttribute("product5", service.getProductById(2));
//			model.addAttribute("product6", service.getProductById(3));	
//			return "model";
//		}
//		 }
		@RequestMapping(value="/countclick", method = RequestMethod.POST)
		@ResponseBody
		public String advertiselistajax(@RequestParam("click") Integer click,				
				@RequestParam("adId") Integer adId,
				@RequestParam("memberid") String memberid,
				Model model){
//			System.out.println("===========advertiselistajax IN=============");
//			System.out.println("productId: "+adId);
			AdvertiseBean ad=adservice.getAdvertiseById(adId);
//			System.out.println("memberid: "+memberid);	
			CustomerInfoBean CI=new CustomerInfoBean();
			ShopmemberBean aa=userService.findByAccount(memberid);
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
			
			CI.setCampaigndate(sdf.format(date));
			CI.setAddress(aa.getAddress());
			CI.setAge(aa.getAge());
			CI.setEducation(aa.getEducation());
			CI.setEmail(aa.getEmail());
			CI.setGender(aa.getGender());
			
			CI.setJobs(aa.getJobs());
			
			CI.setAdId(adId);
			CI.setMemberid(memberid);
			CI.setProductId(ad.getProductId());
			ciservice.save(CI);
				ad.setClick(click);	
				if(click>=ad.getBudget()) {
					 
				System.out.println("budget"+ad.getBudget());
				System.out.println("clickafterupdate"+click);
				ad.setStatus("刊登結束");
				ad.setOpenandclose(2);
				adservice.update(ad);	
			
				}else {
					System.out.println("===========advertise no ad IN=============");
				
				adservice.update(ad);
				
				
			}
				return "index2";
		}
		
		@RequestMapping(value = "/delete1", method = RequestMethod.GET)
		public String delete1(@ModelAttribute("id") Integer adId) {
			System.out.println("----------------delete----------------------");
			System.out.println(adId);
			adservice.deletePAdbertiseBean(adId); 
		 
		
			return "redirect:/advertiselist";

		}
		
		@RequestMapping(value="/updatebudget", method = RequestMethod.POST)
		@ResponseBody
		public String updatebudget(@RequestParam("budget") Integer budget,				
		@RequestParam("adId") Integer adId){
//		System.out.println("bduget and adid "+adId+budget);
		AdvertiseBean bb=adservice.getAdvertiseById(adId);
		bb.setBudget(budget);
		
		adservice.update(bb);
		
		return "redirect:/advertiselist";
		}
		
		@RequestMapping("/advertiselist")
		public String advertiselist(Model model,HttpSession session ) {
			
			ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");
//			System.out.println("info1 addproducts"+info1);
			
			List<AdvertiseBean> list=adservice.getAdvertiseByCompanyid(info1.getSeqNo());
//			System.out.println("list1 "+list);		
//			List<ProductBean> list = service.getAllProducts();
//			if(list==null) {
//				 System.out.println("insidenull");
//					
//			}else {		
//			ProductBean bb=list.
					
			model.addAttribute("member", info1);
			model.addAttribute("advertise", list);
			
			return "advertiselist";
			
		
		}
		@RequestMapping("/Customerinfolist")
		public String Customerinfolist(Model model ) {
			
			List<CustomerInfoBean> list3=ciservice.getAllCustomerInfoBean();
			System.out.println("list1 "+list3);	
			int b=0;
			int g=0;
			
			for(int j=1;j<list3.size();j++) {
			String q=list3.get(j).getGender();
			
			System.out.println("q "+q);	
			if(q.equals("男")) {
				b=b+1;
			}else {
				g=g+1;
			}
			
			
			System.out.println("男"+b+"女"+g);
			}
			ShopmemberBean a=new ShopmemberBean();
			for(int i=1;i<list3.size();i++) {
				
			 a=userService.findByAccount(list3.get(i).getMemberid());
				System.out.println();
			}
			ArrayList<Integer> gendercount = new ArrayList<Integer>();
			gendercount.add(b);
			gendercount.add(g);
		
			model.addAttribute("customerinfo", list3);
			model.addAttribute("memberinfo", a);
			model.addAttribute("totalgender", gendercount);
			return "Customerinfolist";
			}
		
		
		
		@RequestMapping("/toAIOPayAd")
		public String toAIOPayAd(HttpSession session) {
			return "aioCheckOut";
		}
		
//		AllInOne all;
//		@RequestMapping(value = "/aioCheckOut/aioCheckOutOneTime",  produces="text/html;charset=UTF-8")
//		public @ResponseBody String aioAdvertise(AioCheckOutOneTime aio,HttpSession session) throws UnsupportedEncodingException{
//			all = new AllInOne("");
//			AdvertiseBean aa= adservice.getAdvertiseById(1);
//			System.out.println("iocheckresult"+aa);
//			aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
//			Date date = new Date();
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
//			aio.setMerchantTradeDate(sdf.format(date));
//			aio.setItemName(aa.getAddiscription());
//			aio.setTotalAmount(aa.getPrice().toString());
//			aio.setTradeDesc("item desc");
//			aio.setReturnURL("http://localhost:8080/testfinalproject/");
//			aio.setClientBackURL("http://localhost:8080/testfinalproject/");
////			try{
////				String html = all.aioCheckOut(aio, invoice);
////				System.out.println(html);
//				return html;
////			} catch(EcpayException e){
////				throw new Error(e.getNewExceptionMessage());
////			}
//			
//		}

		
}
//AdvertiseBean ac=adservice.getAdvertiseById(productId);
//if(ac.getClick()==5) {
//	ac.setStatus(2);
//	ac.setClick(click);
//	adservice.update(ad);
////	List<AdvertiseBean> list=adservice.getTop3highCpc();
////	int	pI1=list.get(0).getProductId();
////	int pI2=list.get(1).getProductId();
////	int	pI3=list.get(2).getProductId();
////	model.addAttribute("product", service.getProductById(pI1));
////	model.addAttribute("product1", service.getProductById(pI2));
////	model.addAttribute("product2", service.getProductById(pI3));

	


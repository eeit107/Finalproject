package com.web.store.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.formbean.UserFormBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;
import com.web.utils.CurrentUser;

@Controller
public class Company {
	
	@Autowired
	CurrentUser currentUser;
	@Autowired
	UserService userService;
	@RequestMapping(value="/checkcompany",method=RequestMethod.GET  )
	public String checkCompany(Model model) {
		ShopmemberBean sb=currentUser.getShopmemberBean();
		model.addAttribute("company", sb);
		return "docompany";
	}
	
	@RequestMapping(value="/docompany",method=RequestMethod.POST)
	public String createCompany(@RequestParam(value="memberid")String memberid,
			@RequestParam(value = "address") String address,
            @RequestParam(value = "ein") String ein, 
            @RequestParam(value = "companyname") String companyname,
            @RequestParam(value = "companytel") String companytel,@RequestParam(value = "seqNo") String seqNo) {
		ShopmemberBean bean = userService.findByAccount(currentUser.getUserId());
		System.out.println("sqNo :"+seqNo);
		//bean.setSeqNo(1);
		bean.setMemberid(memberid);
		bean.setRole("upgrade");
		bean.setAddress(address);
		bean.setEin(ein);
		bean.setCompanyname(companyname);
		bean.setCompanytel(companytel);
		userService.update(bean);
		return "admincheck";
	}
	//admin審核

	@RequestMapping(value="/company-upgrade",method=RequestMethod.GET)
	public String upgrade(Model model) {
		List<ShopmemberBean> sbList =userService.selectByRole("upgrade");
		System.out.println(sbList);
		model.addAttribute("companys", sbList);
		return "checkadmin";
	} 
	//admin審核
	@RequestMapping(value="/docompany-upgrade/{seqNo}",method=RequestMethod.POST)
	public String docompanyupgrade(@PathVariable("seqNo")int seqNo) {
		ShopmemberBean sb=userService.findByPK(seqNo);
		sb.setRole("company");
		userService.update(sb);
		return "redirect:/company-upgrade";
	}
	
//	@RequestMapping(value="/company",method=RequestMethod.GET  )
//	public String Companyupdate(Model model ,HttpSession session) {
//		
//		return "company";
//	}
//	
//	@RequestMapping(value="/addcompany",method=RequestMethod.POST)
//	public String addCompany(HttpServletRequest request, HttpServletResponse response)  {
//		String cbox=request.getParameter("cbox1");
//		System.out.println(cbox);
//		return "admincheck" ;
//		
//	}
	@RequestMapping(value="/company-details",method=RequestMethod.GET)
	public String company(Model model) {
		ShopmemberBean sb=currentUser.getShopmemberBean();
		String  string=sb.getRole();
		if(string.equals("user")) 
			sb=null;
		model.addAttribute("company", sb);
		return "company-details";
		
	}
	@RequestMapping(value="/upcompany",method=RequestMethod.GET )
	public String Updatecompany(Model model) {
		ShopmemberBean  shop=currentUser.getShopmemberBean();
		String role=shop.getRole();
		if(role.equals("user"))
			shop=null;
		model.addAttribute("company",shop);		
		return "upcompanydetails";
		
	}
	@RequestMapping(value="/doupcompany",method=RequestMethod.POST)
	public String addupdate(@ModelAttribute UserFormBean formbean) {
		ShopmemberBean bean = userService.findByAccount(currentUser.getUserId());
		System.out.println("getsqeNo :"+bean.getSeqNo());
        bean.setPassword(formbean.getPassword());
		bean.setEmail(formbean.getEmail());
		bean.setPhone(formbean.getPhone());
		bean.setUsername(formbean.getUsername());
		bean.setAddress(formbean.getAddress());
		bean.setEin(formbean.getEin());
		bean.setCompanyname(formbean.getCompanyname());
		bean.setCompanytel(formbean.getCompanytel());

		userService.update(bean);
		
		return "redirect:/company-details";
	}
}

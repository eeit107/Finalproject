package com.web.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;

@Controller
public class excelcontroller {
 @Autowired
 UserService userService;
 
 @RequestMapping(value="/excel", method=RequestMethod.GET,produces = "application/vnd.ms-excel")
 public String excel(Model model) {
  System.out.println("========Excel IN===========");
  List<ShopmemberBean> list = userService.selectByRole("upgrade");;
  for(ShopmemberBean vv : list) {
//   System.out.println("vv :"+vv.getName());
  }
  System.out.println("list:" + list);
  model.addAttribute("company", list);
  System.out.println("========Excel OUT===========");
  return "company-excel";
 }

}
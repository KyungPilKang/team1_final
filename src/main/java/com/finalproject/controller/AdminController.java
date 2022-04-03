//package com.finalproject.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//
//
//@Controller
//public class AdminController {
//	@Autowired
//	AdminService adminService;
//	
//	@GetMapping(value="/allaccountinfo")
//	public ModelAndView allaccinfo() {
//		ModelAndView mav=new ModelAndView("bankmain");
//		try {
//			List<Account> accs=accountService.allAccountInfo();
//			mav.addObject("accs", accs);
//			mav.addObject("cpage", "admin_qnaInfoForm");
//		} catch(Exception e) {
//			mav.addObject("err", e.getMessage());
//			mav.addObject("cpage", "err");
//		}
//		return mav;
//	}
//
//}

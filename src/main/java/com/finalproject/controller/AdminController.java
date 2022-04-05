package com.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	
	
//	@GetMapping(value="/qnainformationlist")
//	public ModelAndView qnainfolist() {
//		ModelAndView mav=new ModelAndView();
//		try {
//			List<Qnainfo> qnaLists=adminService.getQnaInfoList();
//			mav.addObject("qnaLists", qnaLists);
//			mav.addObject("", "admin_qnaInfoForm");
//		} catch(Exception e) {
//			mav.addObject("err", e.getMessage());
//			mav.addObject("", "err");
//		}
//		return mav;
//	}
	
	
	
}

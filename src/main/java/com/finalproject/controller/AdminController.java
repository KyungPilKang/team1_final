package com.finalproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.service.AdminService;

@Controller
public class AdminController {
	
//	@Autowired
//	private AdminService adminService;
//	
//	@Autowired
//	private HttpSession session;
//	
//	
//	
//	@PostMapping(value="/adminqnainfo")
//	public ModelAndView adminqnainfo() {
//		ModelAndView mav=new ModelAndView("/admin/admin_qnaInfoForm");
//		String result = null;
//		String user_id = (String) session.getAttribute("id");
//		try {
//			List<Qnainfo> qnaList=adminService.getQnaInfoList();
//			mav.addObject("qnaList", qnaList);
//			mav.setViewName("/admin/admin_qnaInfoForm");
//		} catch(Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		return mav;
//	}
	
	
	
}

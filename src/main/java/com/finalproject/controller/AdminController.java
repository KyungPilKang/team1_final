package com.finalproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Request;
import com.finalproject.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private HttpSession session;

	
	@GetMapping("qna1")
	public String qna1() {
		List<Request> reqList=adminService.getTeacherRequestList();
		return "admin/admin_qnaList1";
	}
	@GetMapping("qna2")
	public String qna2() {
		return "admin/admin_qnaList2";
	}
	@GetMapping("qna3")
	public String qna3() {
		return "admin/admin_qnaList3";
	}
	
	
//	1:1 문의 목록 메서드
	@GetMapping(value="/adminqnainfo")
	public ModelAndView adminqnainfo() {
		ModelAndView mav=new ModelAndView();
		
		try {
			List<Request> reqList=adminService.getRequestList();
			/// List<Answer> ansList=adminService.getAnswerList();
			
			mav.addObject("reqList", reqList);
// 			mav.addObject("ansList", ansList);
			
			mav.setViewName("/admin/admin_qnaInfoForm");
		} catch(Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
//	답변등록 컨트롤러
	@PostMapping(value="/adminqnareg")
	public ModelAndView adminqnareg(@ModelAttribute Answer ans) {
		ModelAndView mav=new ModelAndView();
		
		try {
			List<Request> reqList=adminService.getRequestList();
			mav.addObject("reqList", reqList);
			
//			▼답변입력 코드
			adminService.inputQna(ans);
//			답변등록일 코드 어떻게 해야하는지 질문
			
			mav.setViewName("/admin/admin_qnaRegForm");
		} catch(Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
}

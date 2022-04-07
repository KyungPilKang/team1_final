package com.finalproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Request;
import com.finalproject.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private HttpSession session;

	
	@GetMapping("/qnalist")
	public ModelAndView qnaListForm() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		// String role = mem.getRole();
		String role= "freelancer";
		try {
			List<Request> reqList=adminService.getRequestListByRole(role);
			mav.addObject("reqList", reqList);
			System.out.println(reqList.get(0).getRequest_client());
			System.out.println(reqList.get(1).getRequest_client());
			
			List<Answer> ansList=adminService.getAnswerListByRole(role);
			mav.addObject("ansList", ansList);
			
			mav.setViewName("/admin/admin_qnaList1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		
		switch(role) {
		case "freelancer":
			mav.setViewName("admin/admin_qnaList1");
			break;
		case "worker":
			mav.setViewName("admin/admin_qnaList2");
			break;
		case "student":
			mav.setViewName("admin/admin_qnaList3");
			break;
		case "parents":
			mav.setViewName("admin/admin_qnaList4");
			break;
		}
		
		return mav;
		
	}
	
	
	
//	@GetMapping(value="/adminqnainfo")
//	public ModelAndView adminqnainfo() {
//		ModelAndView mav=new ModelAndView();
//		
//		try {
//			List<Request> reqList=adminService.getRequestList();
//			/// List<Answer> ansList=adminService.getAnswerList();
//			
//			mav.addObject("reqList", reqList);
//// 			mav.addObject("ansList", ansList);
//			
//			mav.setViewName("/admin/admin_qnaInfoForm");
//		} catch(Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		return mav;
//	}
//	
//	
////	답변등록 컨트롤러
//	@PostMapping(value="/adminqnareg")
//	public ModelAndView adminqnareg(@ModelAttribute Answer ans) {
//		ModelAndView mav=new ModelAndView();
//		
//		try {
//			List<Request> reqList=adminService.getRequestList();
//			mav.addObject("reqList", reqList);
//			
////			▼답변입력 코드
//			adminService.inputQna(ans);
////			답변등록일 코드 어떻게 해야하는지 질문
//			
//			mav.setViewName("/admin/admin_qnaRegForm");
//		} catch(Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		return mav;
//	}
	
	
}

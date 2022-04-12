package com.finalproject.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public ModelAndView qnaList() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		// String role = mem.getRole();
		String role= "freelancer";
		try {
			List<Request> reqList=adminService.getRequestListByRole(role);
			mav.addObject("reqList", reqList);
			
			System.out.println(reqList.get(0).getRequest_subject());
			System.out.println(reqList.get(1).getRequest_subject());
			
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
		case "student":
			mav.setViewName("admin/admin_qnaList2");
			break;
		}
		
		return mav;
		
	}
	
	@GetMapping("/withdrawmemlistT")
	public ModelAndView withdrawMemListT() {
		ModelAndView mav=new ModelAndView();
		try {
			List<Member> memList=adminService.getWithdrawListT();
			mav.addObject("memList", memList);
			mav.setViewName("/admin/admin_WithdrawMemListT");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	@GetMapping("/withdrawmemlistS")
	public ModelAndView withdrawMemListS() {
		ModelAndView mav=new ModelAndView();
		try {
			List<Member> memList=adminService.getWithdrawListS();
			mav.addObject("memList", memList);
			System.out.println(memList);
			
			mav.setViewName("/admin/admin_WithdrawMemListS");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	@RequestMapping("orderlist")
	public String orderList() {
		return "admin/admin_deliveryInfoFormA";
	}
	
	
//	@GetMapping("/orderlist")
//	public ModelAndView orderList() {
//		ModelAndView mav=new ModelAndView();
//		Member mem = (Member) session.getAttribute("login");
//		// String role = mem.getRole();
//		String role= "student";
//		try {
//			List<Member> memList=adminService.getMemberListByRole(role);
//			mav.addObject("memList", memList);
//			
//			System.out.println(memList.get(0).getAge());
//			System.out.println(memList.get(1).getAge());
//			
//			
//			mav.setViewName("/admin/admin_orderList1");
//		} catch (Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		switch(role) {
//		case "payCompl":
//			mav.setViewName("admin/admin_orderList1");
//			break;
//		case "prodDeli":
//			mav.setViewName("admin/admin_orderList2");
//			break;
//		case "deliCompl":
//			mav.setViewName("admin/admin_orderList3");
//			break;
//		}
//		return mav;
//	}
	
	
	
	@GetMapping(value="/qnainfo")
	public ModelAndView qnainfo() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		// String role = mem.getRole();
		String role= "freelancer";
		try {
			Request reqInfo=adminService.getRequestInfoByRole(role);
			mav.addObject("reqInfo", reqInfo);
			
			Answer ansInfo=adminService.getAnswerInfoByRole(role);
			mav.addObject("ansInfo", ansInfo);
			
			mav.setViewName("/admin/admin_qnaInfoForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		
		switch(role) {
		case "freelancer":
			mav.setViewName("admin/admin_qnaInfoForm1");
			break;
		case "student":
			mav.setViewName("admin/admin_qnaInfoForm2");
			break;
		}
		return mav;
	}
	
	
	@GetMapping(value="/qnareg")
	public ModelAndView qnareg() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		// String role = mem.getRole();
		String role= "freelancer";
		try {
			Request reqReg=adminService.getRequestRegByRole(role);
			mav.addObject("reqReg", reqReg);
			
			Answer ansReg=adminService.getAnswerRegByRole(role);
			mav.addObject("ansReg", ansReg);
			
			mav.setViewName("/admin/admin_qnaRegForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		
		switch(role) {
		case "freelancer":
			mav.setViewName("admin/admin_qnaRegForm1");
			break;
		case "student":
			mav.setViewName("admin/admin_qnaRegForm2");
			break;
		}
		return mav;
	}
	
	
	
	
	
	
	
//	@GetMapping(value="/qnareg")
//	public ModelAndView qnareg() {
//		ModelAndView mav=new ModelAndView();
//		Member mem = (Member) session.getAttribute("login");
//		// String role = mem.getRole();
//		String role= "freelancer";
//		try {
//			List<Request> reqReg=adminService.getRequestRegByRole(role);
//			mav.addObject("reqReg", reqReg);
//			
//			List<Answer> ansReg=adminService.getAnswerRegByRole(role);
//			mav.addObject("ansReg", ansReg);
//			
//			mav.setViewName("/admin_qnaRegForm1");
//		} catch (Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		
//		switch(role) {
//		case "freelancer":
//			mav.setViewName("admin/admin_qnaRegForm1");
//			break;
//		case "student":
//			mav.setViewName("admin/admin_qnaRegForm2");
//			break;
//		}
//		return mav;
//	}

	
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

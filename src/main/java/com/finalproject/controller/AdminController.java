package com.finalproject.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.dto.OrderBook;
import com.finalproject.dto.Request;
import com.finalproject.service.AdminService;
import com.finalproject.service.MemberService;


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
	
	@RequestMapping("/adminHome")
	public @ResponseBody String adminHome() {
		return "testadminhome";
	}
	
	@GetMapping("/adminHome")
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

	
	@GetMapping("/orderlist")
	public ModelAndView orderList() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		// String role = mem.getRole();
		String order_state= "payCompl";
		try {
			List<Order> orderList=adminService.getOrderListByState(order_state);
			mav.addObject("orderList", orderList);
			
			List<OrderBook> orderBookList=adminService.getOrderBookByState(order_state);
			mav.addObject("orderBookList", orderBookList);
			
			mav.setViewName("/admin/admin_orderList1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		switch(order_state) {
		case "payCompl":
			mav.setViewName("admin/admin_orderList1");
			break;
		case "prodDeli":
			mav.setViewName("admin/admin_orderList2");
			break;
		case "deliCompl":
			mav.setViewName("admin/admin_orderList3");
			break;
		}
		return mav;
	}
	
	
	
	@GetMapping("/deliveryinfo")
	public ModelAndView deliveryInfo(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");

		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);
			
			OrderBook orderBookInfo=adminService.getOrderBookInfoByNum(order_num);
			mav.addObject("orderBookInfo", orderBookInfo);
			
			mav.setViewName("/admin/admin_deliveryInfoForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		
//		switch(order_state) {
//		case "payCompl":
//			mav.setViewName("admin/admin_deliveryInfoForm1");
//			break;
//		case "prodDeli":
//			mav.setViewName("admin/admin_deliveryInfoForm2");
//			break;
//		case "deliCompl":
//			mav.setViewName("admin/admin_deliveryEditForm3");
//			break;
//		case "deliCompl":
//			mav.setViewName("admin/admin_deliveryInfoForm4");
//			break;
//		case "deliCompl":
//			mav.setViewName("admin/admin_deliveryInfoForm5");
//			break;
//		}
		
		return mav;
	}
	
	
	
	@GetMapping(value="/qnainfo/{requestNum}")
	public ModelAndView qnaInfo(@PathVariable int requestNum) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		
		try {
			Request reqInfo=adminService.getRequestInfoByNum(requestNum);
			mav.addObject("reqInfo", reqInfo);
			
			Answer ansInfo=adminService.getAnswerInfoByNum(requestNum);
			mav.addObject("ansInfo", ansInfo);
			
			mav.setViewName("/admin/admin_qnaInfoForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
	@GetMapping(value="/qnareg/{requestNum}")
	public ModelAndView qnaReg(@PathVariable int requestNum) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		
		try {
			Request reqReg=adminService.getRequestInfoByNum(requestNum);
			mav.addObject("reqReg", reqReg);
			
			Answer ansReg=adminService.getAnswerInfoByNum(requestNum);
			mav.addObject("ansReg", ansReg);
			
			mav.setViewName("/admin/admin_qnaRegForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
	

	
	
}

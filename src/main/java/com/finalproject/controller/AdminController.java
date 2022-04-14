package com.finalproject.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.dto.Request;
import com.finalproject.service.AdminService;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private HttpSession session;

	
	
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
	public ModelAndView orderList(@RequestParam(value = "state", defaultValue = "0") String state) {
		ModelAndView mav=new ModelAndView();
		try {
			switch(state) {
			case "0":
				List<Order> orderList=adminService.getOrderListByState("결제완료");
				mav.addObject("orderList", orderList);
				mav.addObject("state","결제완료");
				mav.setViewName("admin/admin_orderList1");
				break;
			case "1":
				List<Order> orderList1=adminService.getOrderListByState("배송중");
				mav.addObject("orderList", orderList1);
				mav.addObject("state","배송중");
				mav.setViewName("admin/admin_orderList1");
				break;
			case "2":
				List<Order> orderList2=adminService.getOrderListByState("배송완료");
				mav.addObject("orderList", orderList2);
				mav.addObject("state","배송완료");
				mav.setViewName("admin/admin_orderList1");
				break;
			}
			mav.setViewName("/admin/admin_orderList1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}

	
	@GetMapping("/deliveryinfo1/{order_num}")
	public ModelAndView deliveryInfo1(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");

		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);
			
			mav.setViewName("/admin/admin_deliveryInfoForm1");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	@GetMapping("/deliveryinfo2/{order_num}")
	public ModelAndView deliveryInfo2(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");

		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);
			
			mav.setViewName("/admin/admin_deliveryInfoForm2");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	@GetMapping("/deliveryedite/{order_num}")
	public ModelAndView deliveryEdite(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");

		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);
			
//			adminService.insertOrderNum(delinum);
			
			mav.setViewName("/admin/admin_deliveryEditForm3");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
	@GetMapping("/deliveryinfo4/{order_num}")
	public ModelAndView deliveryInfo4(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");
		
		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);

			mav.setViewName("/admin/admin_deliveryInfoForm4");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
	@GetMapping("/deliveryinfo5/{order_num}")
	public ModelAndView deliveryInfo5(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login");

		try {
			Order orderInfo=adminService.getOrderInfoByNum(order_num);
			mav.addObject("orderInfo", orderInfo);
			
			mav.setViewName("/admin/admin_deliveryInfoForm5");
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
	
//	@GetMapping(value="/qnainfo/{requestNum}")
//	public ModelAndView qnaInfo(@PathVariable int requestNum) {
//		ModelAndView mav=new ModelAndView();
//		Member mem = (Member) session.getAttribute("login");
//		
//		try {
//			Request reqInfo=adminService.getRequestInfoByNum(requestNum);
//			mav.addObject("reqInfo", reqInfo);
//			
//			Answer ansInfo=adminService.getAnswerInfoByNum(requestNum);
//			mav.addObject("ansInfo", ansInfo);
//			
//			mav.setViewName("/admin/admin_qnaInfoForm1");
//		} catch (Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		return mav;
//	}
	
	
	
//	@GetMapping(value="/qnareg/{requestNum}")
//	public ModelAndView qnaReg(@PathVariable int requestNum) {
//		ModelAndView mav=new ModelAndView();
//		Member mem = (Member) session.getAttribute("login");
//		
//		try {
//			Request reqReg=adminService.getRequestInfoByNum(requestNum);
//			mav.addObject("reqReg", reqReg);
//			
//			Answer ansReg=adminService.getAnswerInfoByNum(requestNum);
//			mav.addObject("ansReg", ansReg);
//			
//			mav.setViewName("/admin/admin_qnaRegForm1");
//		} catch (Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		return mav;
//	}
	
	
	
//	@GetMapping("/qnalist")
//	public ModelAndView qnaList() {
//		ModelAndView mav=new ModelAndView();
//		Member mem = (Member) session.getAttribute("login");
//		// String role = mem.getRole();
//		String role= "freelancer";
//		try {
//			List<Request> reqList=adminService.getRequestListByRole(role);
//			mav.addObject("reqList", reqList);
//			
//			System.out.println(reqList.get(0).getRequest_subject());
//			System.out.println(reqList.get(1).getRequest_subject());
//			
//			List<Answer> ansList=adminService.getAnswerListByRole(role);
//			mav.addObject("ansList", ansList);
//			
//			mav.setViewName("/admin/admin_qnaList");
//		} catch (Exception e) {
//			e.printStackTrace();
//			mav.addObject("err", e.getMessage());
//			mav.addObject("/admin/err");
//		}
//		
//		switch(role) {
//		case "freelancer":
//			mav.setViewName("admin/admin_qnaList1");
//			break;
//		case "student":
//			mav.setViewName("admin/admin_qnaList2");
//			break;
//		}
//		return mav;
//	}

	
	
}

package com.finalproject.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Member;
import com.finalproject.dto.Order;
import com.finalproject.service.AdminService;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private HttpSession session;
	
	
	

	@GetMapping("/adminHome")
	public ModelAndView withdrawMemListS() {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login"); // 작성 목적 : 관리자만 접근할 수 있도록

		System.out.println("객체:"+mem);
		System.out.println("관리자:"+mem.getRole());

		if (mem.getRole().equals("ROLE_ADMIN")) {
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
		}
		return mav;
	}


	@GetMapping("/orderlist")
	public ModelAndView orderList(@RequestParam(value = "state", defaultValue = "0") String state) {
		ModelAndView mav=new ModelAndView();
		Member mem = (Member) session.getAttribute("login"); // 작성 목적 : 관리자만 접근할 수 있도록
		System.out.println("객체:"+mem);
		System.out.println("관리자:"+mem.getRole());
		if (mem.getRole().equals("ROLE_ADMIN")) {
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
		}
		return mav;
	}


	@GetMapping("/deliveryinfo/{order_num}")
	public ModelAndView deliveryInfo1(@PathVariable String order_num) {
		ModelAndView mav=new ModelAndView("/");
		Member mem = (Member) session.getAttribute("login"); // 작성 목적 : 관리자만 접근할 수 있도록
		if (mem.getRole().equals("ROLE_ADMIN")) {
			try {
				Order orderInfo=adminService.getOrderInfoByNum(order_num);
				mav.addObject("orderInfo", orderInfo);

				mav.setViewName("/admin/admin_deliveryInfoForm");
			} catch (Exception e) {
				e.printStackTrace();
				mav.addObject("err", e.getMessage());
				mav.addObject("/admin/err");
			}
		}
		return mav;
	}

	
	@ResponseBody
	@PostMapping("/deliveryChange")
	public String deliveryChange(Order order) {
		System.out.println(order.getOrder_num());
		System.out.println(order.getOrder_state());
		System.out.println(order.getOrder_deli_num());
		try {
			adminService.updateOrderState(order);

		} catch(Exception e) {
			e.printStackTrace();
			return "실패";
		}
		return "성공";
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

package com.finalproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproject.dto.Member;

@Controller
public class ViewController {

	@Autowired
	HttpSession session;
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	//nav바 상단 eLEARNING 글자, Home 버튼 클릭시 리턴
	@GetMapping("/home")
	public String home() {
		return "main/index";
	}
	
	@RequestMapping("/")
	public @ResponseBody String main() {
		String result; 
		Member mem = (Member) session.getAttribute("login");
		result = mem.toString();
		return result;
	}
	
//	@RequestMapping("/freereg1")
//	public String freeReg1() {
//		return "freelance/regfreelance1";
//	}
	
//	@RequestMapping("/freereg2")
//	public String freeReg2() {
//		return "freelance/regfreelance2_class";
//	}

	@GetMapping("/iamportTest")
	public String iamport() {
		return "iamport";
	}
	
	@GetMapping("/resfreeform")
	public String resfreeform() {
		return "freelance/resfreelance";
	}
	
	@GetMapping("detailfree")
	public String detailfree() {
		return "freelance/detailfreelance_1";
	}
	
	@GetMapping("test1")
	public String test1() {
		return "admin/admin_qnaInfoForm";
	}
}

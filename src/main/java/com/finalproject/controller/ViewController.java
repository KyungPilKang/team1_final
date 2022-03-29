package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ViewController {

	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	//nav바 상단 eLEARNING 글자, Home 버튼 클릭시 리턴
	@RequestMapping("/home")
	public @ResponseBody String home() {
		return "test home";
	}
	
	@RequestMapping("/freereg1")
	public String freeReg1() {
		return "freelance/regfreelance1";
	}
	
//	@RequestMapping("/freereg2")
//	public String freeReg2() {
//		return "freelance/regfreelance2_class";
//	}

}

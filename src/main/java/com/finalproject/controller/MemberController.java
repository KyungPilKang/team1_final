package com.finalproject.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.service.MemberServiceImpl;




@Controller
public class MemberController {
	
	@Autowired(required=false)
	MemberServiceImpl memberService;
	
	@Autowired
	HttpSession session;
	
	  @GetMapping("loginForm")
	    public String login(){

	        return "/loginJoin/loginForm";
	    }
	  
	  @RequestMapping("termsagree")
	  public String termsagree() {
		  return "/loginJoin/termsagree";
	  }

	@RequestMapping("withdrawal")
	public String withdrawal() {
		return "/loginJoin/withdrawalForm";
	}
	
	@RequestMapping("joinForm")
	public String joinform() {
		return "/loginJoin/joinForm";
	}
	
	@RequestMapping("password")
	public String modifyPassword() {
	return "/loginJoin/modifyPassword";	
	}
	
	@RequestMapping("modify")
	public String modifyForm(Model model) {
		
		model.addAttribute("name", "TESTNAME192992929222222222222222222222222");
		model.addAttribute("username", "testid");
		model.addAttribute("nickname","12345678");
		model.addAttribute("email1", "lim22222222222");
		model.addAttribute("email2", "naver.com");
		model.addAttribute("phone", "01012341234");
		model.addAttribute("zipcode", "11111");
		model.addAttribute("dorojuso", "서울");
		model.addAttribute("sangsejuso1", "아파트");
		model.addAttribute("sangsejuso2", "202동");
		    
		
		return "/loginJoin/modifyForm";
	}

}

package com.finalproject.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.service.MemberServiceImpl;
import com.finalproject.dto.Member;

@Controller
public class MemberController {
	
	@Autowired(required=false)
	MemberServiceImpl memberService;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("join")
	public ModelAndView join(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView();
		try {
			
			memberService.insertMember(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("home");
		return mav;
	}
	
	@ResponseBody
	@PostMapping("emailCheck")
	public String emailCheck(@RequestParam(value="email", required=true)String email) {
		boolean overlap = false;
		try {
			overlap=memberService.emailCheck(email);
		} catch(Exception e) {
		}
		return String.valueOf(overlap);
	}
	
	@ResponseBody
	@PostMapping("usernameCheck")
	public String usernameCheck(@RequestParam(value="username", required=true)String username) {
		boolean overlap = false;
		try {
			overlap=memberService.usernameCheck(username);
		} catch(Exception e) {
		}
		return String.valueOf(overlap);
	}
	
	@ResponseBody
	@PostMapping("nicknameCheck")
	public String nicknameCheck(@RequestParam(value="nickname", required=true)String nickname) {
		boolean overlap = false;
		try {
			overlap=memberService.usernameCheck(nickname);
		} catch(Exception e) {
		}
		return String.valueOf(overlap);
	}
	
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
	
	@PostMapping("modify")
	public ModelAndView modify(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView();
		try {
			memberService.insertMember(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("home");
		return mav;
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

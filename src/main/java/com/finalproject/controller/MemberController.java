package com.finalproject.controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Member;
import com.finalproject.service.MemberServiceImpl;

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
	
	@PostMapping("updateMember")
	public ModelAndView updateMember(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView();
		try {
			
			memberService.infoUpdateMember(member);
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
	
	@ResponseBody
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestParam(value="username", required=false) String username, @RequestParam(value="password",required=false) String password) {
		String result = "";
		System.out.println(username);
		System.out.println(password);
		try {
			result = memberService.loginCheck(username,password);
			if(result.equals("ok")) {
				Member login = memberService.selectMemberByUsername(username);
				session.setAttribute("no", login.getNo());
				session.setAttribute("username", login.getUsername());
				session.setAttribute("name", login.getName());
				session.setAttribute("nickname", login.getNickname());
				session.setAttribute("email", login.getEmail());
				session.setAttribute("phone", login.getPhone());
				session.setAttribute("zipcode", login.getZipcode());
				session.setAttribute("doro_juso", login.getDoro_juso());
				session.setAttribute("sangse_juso", login.getSangse_juso());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("joinForm")
	public String joinform() {
		return "/loginJoin/joinForm";
	}
	
	
	
	

	  @GetMapping("loginForm")
	    public String loginForm(){
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
	
	@RequestMapping("password")
	public String modifyPassword() {
	return "/loginJoin/modifyPassword";	
	}
	
	@GetMapping("modify")
	public String modify() {
		Object logData = session.getAttribute("login");
		String loginData = (String)logData;
		System.out.println(loginData);
		return "/loginJoin/modifyForm";
	}
	
	@RequestMapping("fail")
	public @ResponseBody String fail() {
		return "fail";
	}
	
}

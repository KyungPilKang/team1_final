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
	
	//admin 계정 만들기
	@RequestMapping("admin")
	public @ResponseBody String admin(Member member) {
		try {
			
			memberService.createAdmin(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "관리자 계정 생성완료";
	}
	
	//joinForm 페이지에서 회원가입 버튼을 누를 경우 진행, home 페이지로 이동한다.
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
	
	//회원정보 수정 페이지로 이동 (modifyForm)
	@GetMapping("modify")
	public String modify() {
		Object logData = session.getAttribute("login");
		String loginData = (String)logData;
		System.out.println(loginData);
		return "/loginJoin/modifyForm";
	}
	
	//회원정보 수정페이지(modifyForm)에서 정보수정 버튼 클릭 누를 경우 수행, 회원정보 업데이트 완료한 뒤 "home"페이지로 이동
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
	
	//이메일 중복체크 버튼 클릭시 진행, boolean타입 형태로 값을 반환하여 ajax와 연동
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
	
	//중복체크 상동
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
	
	//중복체크 상동
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
	
	//패스워드 수정페이지에서 패스워드 일치 확인 
		@ResponseBody
		@PostMapping("passwordCheck")
		public String passwordCheck(@RequestParam(value="no", required=false) int no, @RequestParam(value="password",required=false) String password) {
			boolean overlap = false;
			try {
				overlap=memberService.passwordCheck(no, password);
			
			} catch(Exception e) {
			}
			
			return String.valueOf(overlap);
		}
		
		//패스워드 수정페이지에서 패스워드 수정 버튼 클릭시 진행
		@ResponseBody
		@PostMapping("passChange")
		public String passChange(@RequestParam(value="no", required=false) int no, @RequestParam(value="password",required=false) String password) {
			try {
				memberService.passwordChange(no, password);
			} catch(Exception e) {
			}
			return "ok";
		}
		
		
	
	//로그인 페이지(loginForm)에서 회원정보 입력후 로그인하기 클릭할 경우 진행, 데이터 반환 한 뒤 ajax연동 
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
				session.setAttribute("role", login.getRole());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	//회원가입 페이지 이동
	@RequestMapping("joinForm")
	public String joinform() {
		return "/loginJoin/joinForm";
	}
	
	// 로그인 페이지 이동
	@GetMapping("loginForm")
	    public String loginForm(){
	        return "/loginJoin/loginForm";
	    }
	  
	//약관동의 페이지 이동
	  @RequestMapping("termsagree")
	  public String termsagree() {
		  return "/loginJoin/termsagree";
	  }

	  	//회원탈퇴 페이지 이동
	@RequestMapping("withdrawal")
	public String withdrawal() {
		return "/loginJoin/withdrawalForm";
	}	
	
	//비밀번호 수정 페이지로 이동
	@RequestMapping("password")
	public String modifyPassword() {
	return "/loginJoin/modifyPassword";	
	}
	
	
	
	@RequestMapping("a")
	public String a() {
		return "/admin/admin_deliveryInfoForm1";
	}
	
	@RequestMapping("b")
	public String b() {
		return "/admin/admin_deliveryInfoForm2";
	}

	@RequestMapping("c")
	public String c() {
		return "/admin/admin_deliveryEditForm3";
	}

	@RequestMapping("d")
	public String d() {
		return "/admin/admin_deliveryInfoForm4";
	}
	
	@RequestMapping("e")
	public String e() {
		return "/admin/admin_deliveryInfoForm5";
	}



	
}

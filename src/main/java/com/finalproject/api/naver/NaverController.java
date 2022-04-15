package com.finalproject.api.naver;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.finalproject.api.kakao.OAuthToken;
import com.finalproject.dto.Member;
import com.finalproject.service.MemberService;

@Controller
public class NaverController {
	
	@Autowired(required=false)
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("auth/naver/callback") 
	public String naverCallback(String code, String state, Model model) { //Data를 리턴주는 컨트롤러 함수
		System.out.println(code);
		System.out.println(state);

		
		RestTemplate rt = new RestTemplate();
		
		//httpheader오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//httpbody 오브젝트 생성
		MultiValueMap<String, String>params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "24OF3VzEePL0jwU_gwRz");
		params.add("client_secret", "R4gBbFl66t");
		params.add("code", code);
		params.add("state", state);
		// HttpHeader와 HttpBody를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> naverTokenRequest=
				new HttpEntity<>(params,headers);
		
		// Http 요청하기 - post방식으로 - 그리고 response 변수의 응답 받음.
		ResponseEntity<String> response = rt.exchange(
				"https://nid.naver.com/oauth2.0/token",
				HttpMethod.POST,
				naverTokenRequest,
				String.class
				);
		
		//ObjectMapper 로 json데이터 처리
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		try {
			 oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch(JsonMappingException e) {
			e.printStackTrace();
		} catch(JsonProcessingException e) {
			e.printStackTrace();
		}

		System.out.println("네이버 엑세스 토큰:"+oauthToken.getAccess_token());	
		
	
		

		//사용자 프로필 요청
		RestTemplate rt2 = new RestTemplate();
		
		//httpheader오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		
		// HttpHeader와 HttpBody를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> naverProfileRequest=
				new HttpEntity<>(headers2);
		
		// Http 요청하기 - post방식으로 - 그리고 response2 변수의 응답 받음.
		ResponseEntity<String> response2 = rt2.exchange(
				"https://openapi.naver.com/v1/nid/me",
				HttpMethod.GET,
				naverProfileRequest,
				String.class
				);
	
		//ObjectMapper 로 json데이터 처리
				ObjectMapper objectMapper2 = new ObjectMapper();
				NaverInfo naverInfo = null;
				try {
					naverInfo = objectMapper2.readValue(response2.getBody(), NaverInfo.class);
				} catch(JsonMappingException e) {
					e.printStackTrace();
				} catch(JsonProcessingException e) {
					e.printStackTrace();
				}
				
				//provider_id = naverInfo.Response().getId();
				// email = naverInfo.Response().getEmail();
				System.out.println("provider_id:"+naverInfo.getResponse().getId());
				System.out.println("email:"+naverInfo.getResponse().getEmail());
				String naverId = naverInfo.getResponse().getId();
				try {
					boolean check = false;
					if(check=memberService.naverCheck(naverId)){ //회원가입창으로 이동 true인 경우
						model.addAttribute("email",naverInfo.getResponse().getEmail());
						model.addAttribute("provider_id", naverInfo.getResponse().getId());
						return "/loginJoin/naver";
					}else {
						Member login = memberService.selectMemberByProvider_id(naverId);
						session.setAttribute("no", login.getNo());
						session.setAttribute("name", login.getName());
						session.setAttribute("nickname", login.getNickname());
						session.setAttribute("type", login.getType());
						session.setAttribute("email", login.getEmail());
						session.setAttribute("phone", login.getPhone());
						session.setAttribute("zipcode", login.getZipcode());
						session.setAttribute("doro_juso", login.getDoro_juso());
						session.setAttribute("sangse_juso1", login.getSangse_juso1());
						session.setAttribute("sangse_juso2", login.getSangse_juso2());
						session.setAttribute("role", login.getRole());
						return "loginJoin/oknaver";
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
				return naverId;
	}
	
	
	
	@ResponseBody
	@RequestMapping("/joinFormNaverTemp")
	public ResponseEntity<Map<String,String>> joinformNaverTemp(@RequestParam(value="provider_id",required=false)String provider_id,
			@RequestParam(value="email",required=false)String email) {
		Map<String, String> res = new HashMap<String, String>();
		res.put("provider_id", provider_id);
		res.put("email", email);
		return new ResponseEntity<Map<String,String>>(res, HttpStatus.OK);
	}
	
	@RequestMapping("/joinFormNaver")
	public String joinformNaver(@RequestParam(value="provider_id",required=false)String provider_id,
			@RequestParam(value="email",required=false)String email, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("provider_id", provider_id);
		return "/loginJoin/joinFormNaver";
	}
	
	@PostMapping("joinNaver")
	public ModelAndView joinNaver(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView();
		try {
			
			memberService.insertNaverMember(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:home");
		return mav;
	}


}

package com.finalproject.api.kakao;

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
import com.finalproject.dto.Member;
import com.finalproject.service.MemberService;

@Controller
public class KakaoController {
	
	@Autowired(required=false)
	MemberService memberService;
	
	@Autowired
	HttpSession session;
	
	//로그인 화면에서 버튼 클릭시 연결되는 주소, 로그인 code요청->발급, 토큰발급요청->발급, 정보요청->응답 하여 카카오id(번호)와, email정보 받
	@GetMapping("auth/kakao/callback") 
	public String kakaoCallback(String code, Model model) { //Data를 리턴주는 컨트롤러 함수
		
		RestTemplate rt = new RestTemplate();
		
		//httpheader오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//httpbody 오브젝트 생성
		MultiValueMap<String, String>params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "94fc26e459f927ce79257dc6c17527a7");
		params.add("redirect_uri","http://101.101.218.164:8090/auth/kakao/callback");
		params.add("code", code);
		
		System.out.println("code:"+code);
		// HttpHeader와 HttpBody를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest=
				new HttpEntity<>(params,headers);
		
		// Http 요청하기 - post방식으로 - 그리고 response 변수의 응답 받음.
		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token",
				HttpMethod.POST,
				kakaoTokenRequest,
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

		System.out.println("카카오 엑세스 토큰:"+oauthToken.getAccess_token());	
		
//사용자 프로필 요청
		RestTemplate rt2 = new RestTemplate();
		
		//httpheader오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization","Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		
		// HttpHeader와 HttpBody를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest=
				new HttpEntity<>(headers2);
		
		// Http 요청하기 - post방식으로 - 그리고 response 변수의 응답 받음.
		ResponseEntity<String> response2 = rt2.exchange(
				"https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST,
				kakaoProfileRequest,
				String.class
				);
		
		//ObjectMapper 로 json데이터 처리
				ObjectMapper objectMapper2 = new ObjectMapper();
				KakaoInfo kakaoInfo = null;
				try {
					kakaoInfo = objectMapper2.readValue(response2.getBody(), KakaoInfo.class);
				} catch(JsonMappingException e) {
					e.printStackTrace();
				} catch(JsonProcessingException e) {
					e.printStackTrace();
				}
				
				//provider_id = kakaoInfo.getId();
				// email = kakaoInfo.getKakao_account().getEmail();
//				System.out.println("provider_id:"+kakaoInfo.getId());
//				System.out.println("email:"+kakaoInfo.getKakao_account().getEmail());
				String kakaoId = String.valueOf(kakaoInfo.getId());
//				System.out.println(kakaoId);
				
				try {
					boolean check = false;
					if(check=memberService.kakaoCheck(kakaoId)){ //회원가입창으로 이동 true인 경우
						model.addAttribute("provider", "kakao");
						model.addAttribute("email",kakaoInfo.getKakao_account().getEmail());
						model.addAttribute("provider_id", kakaoInfo.getId());
						return "/loginJoin/kakao";
					}else {
						Member login = memberService.selectMemberByProvider_id(kakaoId);
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
						return "loginJoin/okkakao";
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
				return kakaoId;		
	}
	@ResponseBody
	@RequestMapping("/joinFormKakaoTemp")
	public ResponseEntity<Map<String,String>> joinformKakaoTemp(@RequestParam(value="provider_id",required=false)String provider_id,
			@RequestParam(value="email",required=false)String email) {
		Map<String, String> res = new HashMap<String, String>();
		res.put("provider_id", provider_id);
		res.put("email", email);
		System.out.println("joinFormKakaoTemp:"+provider_id);
		System.out.println("joinFormKakaoTemp:"+email);
		return new ResponseEntity<Map<String,String>>(res, HttpStatus.OK);
	}
	
	@RequestMapping("/joinFormKakao")
	public String joinformKakao(@RequestParam(value="provider_id",required=false)String provider_id,
			@RequestParam(value="email",required=false)String email, Model model) {
		System.out.println("joinFormKakao:"+provider_id);
		System.out.println("joinFormKakao:"+email);
		model.addAttribute("email", email);
		model.addAttribute("provider_id", provider_id);
		model.addAttribute("provider", "KAKAO");
		return "/loginJoin/joinFormKakao";
	}
	
	@PostMapping("joinKakao")
	public ModelAndView joinKakao(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView();
		try {
			
			memberService.insertKakaoMember(member);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:home");
		return mav;
	}

}

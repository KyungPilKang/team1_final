package com.finalproject.api.naver;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.finalproject.api.kakao.KakaoInfo;
import com.finalproject.api.kakao.OAuthToken;

@Controller
public class NaverController {
	
	@GetMapping("auth/naver/callback") 
	public @ResponseBody String naverCallback(String code, String state) { //Data를 리턴주는 컨트롤러 함수
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
			 return "ok";
	}


}

package com.finalproject.api.kakao;

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

@Controller
public class KakaoController {
	
	//로그인 화면에서 버튼 클릭시 연결되는 주소, 로그인 code요청->발급, 토큰발급요청->발급, 정보요청->응답 하여 카카오id(번호)와, email정보 받음
	@GetMapping("auth/kakao/callback") 
	public @ResponseBody String kakaoCallback(String code) { //Data를 리턴주는 컨트롤러 함수
		
		RestTemplate rt = new RestTemplate();
		
		//httpheader오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//httpbody 오브젝트 생성
		MultiValueMap<String, String>params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "94fc26e459f927ce79257dc6c17527a7");
		params.add("redirect_uri","http://localhost:8090/auth/kakao/callback");
		params.add("code", code);
		
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
				System.out.println("provider_id:"+kakaoInfo.getId());
				System.out.println("email:"+kakaoInfo.getKakao_account().getEmail());
				
				return response2.getBody();
	}

}

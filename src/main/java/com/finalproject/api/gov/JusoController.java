package com.finalproject.api.gov;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JusoController {
	
	// 주소입력 test창 추후 회원가입 양식에 붙일 경우 필요없음
	@RequestMapping("jusocall")
	public String jusocall() {
		return "loginJoin/jusocall";
	}
	
	//주소입력란에서 버튼 클릭시 주소입력 팝업창 띄움
	@RequestMapping("jusoPopup.do")
	public String jusopopup() {
		return "loginJoin/jusoPopup";
				
	}

}

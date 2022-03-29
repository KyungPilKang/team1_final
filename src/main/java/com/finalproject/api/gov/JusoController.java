package com.finalproject.api.gov;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JusoController {	
	@RequestMapping("/juso")
	public String jusocCallback() {
		return "/loginJoin/juso";
	}

}

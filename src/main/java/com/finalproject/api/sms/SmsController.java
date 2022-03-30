package com.finalproject.api.sms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SmsController {
	
	
	 @RequestMapping("/sendsms")
		public  @ResponseBody String smssend(@RequestParam("phone") String phone) {
			String numStr= "";
			try { 
				numStr = sms.sendsms(phone.replaceAll("-", ""));  // -삭제하는 작업
			} catch(Exception e){
				e.printStackTrace();
			}
			return numStr;
		}

}

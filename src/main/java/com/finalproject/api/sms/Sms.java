package com.finalproject.api.sms;
import java.util.Random;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class Sms {
  // Find your Account Sid and Token at twilio.com/user/account
  public static final String ACCOUNT_SID = "AC1aeff7c8bc5adc9f7a107bfa0db62045";
  public static final String AUTH_TOKEN = "9ecfcdce578692eb828eadb48a735d80";

	public static String sendsms(String number) {
		 int len = 6;
		  int dupCd = 2;
		   Random rand = new Random();
		   String numStr = ""; 
		  // 난수가 저장될 변수

			for (int i = 0; i < len; i++) {
				// 0~9 까지 난수 생성
				String ran = Integer.toString(rand.nextInt(10));

				if (dupCd == 1) {
					// 중복 허용시 numStr에 append
					numStr += ran;
				} else if (dupCd == 2) {
					// 중복을 허용하지 않을시 중복된 값이 있는지 검사한다
					if (!numStr.contains(ran)) {
						// 중복된 값이 없으면 numStr에 append
						numStr += ran;
					} else {
						// 생성된 난수가 중복되면 루틴을 다시 실행한다
						i -= 1;
					}
				}
			}
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

		Message message = Message.creator(
    		new PhoneNumber("+82"+number.substring(1)),
    		new PhoneNumber("+17657701660"), 
    		numStr).create();
		System.out.println(message.getSid());
		
		return numStr;
		}
	
}
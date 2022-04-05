package com.finalproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Answer;
import com.finalproject.dto.Request;
import com.finalproject.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private HttpSession session;

	
	@PostMapping(value="/adminqnainfo")
	public ModelAndView adminqnainfo() {
		ModelAndView mav=new ModelAndView();
		
		try {
			List<Request> reqList=adminService.getRequestList();
			List<Answer> ansList=adminService.getAnswerList();
			
//			for(Request req: reqList) {
//				System.out.println(req.getRequest_content());
//			}
//			
//			for(Answer ans: ansList) {
//				System.out.println(ans.getAnswer_subject());
//			}
			
			List<Object> qnaList = new ArrayList<>();
			qnaList.addAll(reqList);
			qnaList.addAll(ansList);
			
			// mav.addObject("qnaList", qnaList);
			mav.setViewName("/admin/admin_qnaInfoForm");
		} catch(Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
}

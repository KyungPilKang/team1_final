package com.finalproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	
//	답변등록 확인 컨트롤러
	@PostMapping(value="/adminqnainfo")
	public ModelAndView adminqnainfo() {
		ModelAndView mav=new ModelAndView();
		
		try {
			List<Request> reqList=adminService.getRequestList();
			List<Answer> ansList=adminService.getAnswerList();
			
			for(Request req: reqList) {
				System.out.println(req.getRequest_content());
			}
			
			for(Answer ans: ansList) {
				System.out.println(ans.getAnswer_subject());
			}
			
			List<Object> qnaList = new ArrayList<>();
			qnaList.addAll(reqList);
			qnaList.addAll(ansList);
			
			 mav.addObject("qnaList", qnaList);
			
//			mav.addObject("reqList", reqList);
//			mav.addObject("ansList", ansList);
			mav.setViewName("/admin/admin_qnaInfoForm");
		} catch(Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
//	답변등록 컨트롤러
	@PostMapping(value="/adminqnareg")
	public ModelAndView adminqnareg(@ModelAttribute Answer ans) {
		ModelAndView mav=new ModelAndView();
		
		try {
			List<Request> reqList=adminService.getRequestList();
			mav.addObject("reqList", reqList);
			
//			▼답변입력 코드
			adminService.inputQna(ans);
//			답변등록일 코드 어떻게 해야하는지 질문
			
			mav.setViewName("/admin/admin_qnaRegForm");
		} catch(Exception e) {
			e.printStackTrace();
			mav.addObject("err", e.getMessage());
			mav.addObject("/admin/err");
		}
		return mav;
	}
	
	
}

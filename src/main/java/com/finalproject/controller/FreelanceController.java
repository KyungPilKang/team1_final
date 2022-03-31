package com.finalproject.controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Freelance;
import com.finalproject.dto.Member;
import com.finalproject.service.FreelanceService;
import com.finalproject.service.MemberService;

@Controller
public class FreelanceController {
	
	@Autowired
    private ServletContext servletContext;
	
	@Autowired
    private HttpSession session;
	
	@Autowired
	private FreelanceService freelanceService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/freereg1")
	public String freeReg1() {
		return "freelance/regfreelance1";
	}
	
	@PostMapping("/regfreeconfirm")
	public ModelAndView regfree(@ModelAttribute Freelance inputFree) {
		ModelAndView mav=new ModelAndView();
		try {
			if(!inputFree.getCertification_file().isEmpty()) {
				String path = servletContext.getRealPath("/freelance_upload/certify_pdf/");
				File destFile = new File(path + inputFree.getCertification_file().getOriginalFilename());
				inputFree.setCertification_file_name(inputFree.getCertification_file().getOriginalFilename());
				inputFree.getCertification_file().transferTo(destFile);
			}
			if(!inputFree.getPromotion_video_file().isEmpty()) {
				String path = servletContext.getRealPath("/freelance_upload/promotion_video/");
				File destFile = new File(path + inputFree.getPromotion_video_file().getOriginalFilename());
				inputFree.setPromotion_video_file_name(inputFree.getPromotion_video_file().getOriginalFilename());
				inputFree.getPromotion_video_file().transferTo(destFile);
			}
			if(!inputFree.getBanner_image_file().isEmpty()) {
				String path = servletContext.getRealPath("/freelance_upload/banner_image/");
				File destFile = new File(path + inputFree.getBanner_image_file().getOriginalFilename());
				inputFree.setBanner_image_file_name(inputFree.getBanner_image_file().getOriginalFilename());
				inputFree.getBanner_image_file().transferTo(destFile);
			}
			session.setAttribute("regfree", inputFree);
			mav.setViewName("freelance/regfreelance2_class");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("/regfree")
	public ModelAndView regfree() {
		ModelAndView mav=new ModelAndView();
		//멤버 가라 데이터 설정
		Member mem=new Member();
		mem.setNo(1);
		mem.setName("강경필");
		mem.setDoro_juso("서울시 성북구 화랑로40길 16");
		mem.setGender("M");
		mem.setAge("30");
		mem.setEmail("kangehowl@naver.com");
		mem.setPhone("010-3292-3885");
		
		//프리랜서 등록
		Freelance free=(Freelance)session.getAttribute("regfree");
		try {
			if(free.getFreelance_type().equals("1")) {
				freelanceService.regFreelance_freeType1(free, mem);
			} else if(free.getFreelance_type().equals("2")) {
				freelanceService.regFreelance_freeType2(free);
			} else {
				freelanceService.regFreelance_freeType3(free);
			}
			session.removeAttribute("regfree");
			mav.setViewName("freelance/regfreelance1");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}

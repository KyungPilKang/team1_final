package com.finalproject.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Study;
import com.finalproject.service.FreelanceService;
import com.finalproject.service.MemberService;

@Controller
public class StudyTestController {
	@Autowired
    private ServletContext servletContext;
	
	@Autowired
    private HttpSession session;
		
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("datepickertest")
	public String datepickertest() {
		return "testfile/datepickertest";
	}
		
	@GetMapping("timepicker")
	public String timepicker() {
		return "testfile/timepicker";
		
	}
	
	@GetMapping("checkboxtest")
	public String checkboxtest() {
		return "testfile/checkboxtest";
		
	}
	
	@GetMapping("datalist")
	public String datalist() {
		System.out.println("값 넘어옴");
		return "testfile/checkboxtest";
		
	}
	
	@GetMapping("dropdowntest")
	public String dropdowntest() {
		return "testfile/dropdowntest";
		
	}
	@GetMapping("dropdownlist")
	public String dropdownlist() {
		System.out.println("값 넘어옴");
		return "testfile/dropdowntest";
		
	}
	
	@GetMapping("aligntest")
	public String aligntest() {
		return "testfile/aligntest";
	}
	
	@GetMapping("modaltest")
	public String modaltest() {
		return "testfile/modaltest";
	}

	@RequestMapping("/studyReg")
	public String studyReg() {
		return "testfile/studyReg";
	}
	
	@GetMapping("testpage")
	public String testpage() {
		return "testfile/testpage";
	}
	
	@PostMapping("studyregform")
	public ModelAndView studyregform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println(inputstudy.toString());
		try {
		mav.addObject("regstudy", inputstudy);
		mav.setViewName("testfile/studyRegCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	
	//regstudy
	@PostMapping("studyreg")
	public ModelAndView regstudy(@ModelAttribute Study cnfstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println(cnfstudy.toString());
		return mav;
	}
}

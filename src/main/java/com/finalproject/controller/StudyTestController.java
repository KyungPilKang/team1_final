package com.finalproject.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Freelance;
import com.finalproject.dto.Study;

@Controller
public class StudyTestController {
	
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
	public ModelAndView regfree(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println(inputstudy.getStudy_subject());
		mav.setViewName("studyReg");
		return mav; 
	}
	
	}

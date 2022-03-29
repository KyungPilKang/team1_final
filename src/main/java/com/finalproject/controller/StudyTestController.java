package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	
}

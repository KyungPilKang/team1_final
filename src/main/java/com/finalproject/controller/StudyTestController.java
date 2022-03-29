package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudyTestController {
	
	@GetMapping("datepickertest")
	public String datepickertest() {
		return "datepickertest";
	}
		
	@GetMapping("timepicker")
	public String timepicker() {
		return "timepicker";
		
	}
	
	@GetMapping("checkboxtest")
	public String checkboxtest() {
		return "checkboxtest";
		
	}
	
	@GetMapping("datalist")
	public String datalist() {
		System.out.println("값 넘어옴");
		return "checkboxtest";
		
	}
	
	@GetMapping("dropdowntest")
	public String dropdowntest() {
		return "dropdowntest";
		
	}
	@GetMapping("dropdownlist")
	public String dropdownlist() {
		System.out.println("값 넘어옴");
		return "dropdowntest";
		
	}
	
	@GetMapping("aligntest")
	public String aligntest() {
		return "aligntest";
	}
	
	@GetMapping("modaltest")
	public String modaltest() {
		return "modaltest";
	}

}

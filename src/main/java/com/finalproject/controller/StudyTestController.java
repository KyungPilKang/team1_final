package com.finalproject.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class StudyTestController {
	
	@GetMapping("datepickertest")
	public String datepickertest() {
		return "datepickertest";
	}
		
	@GetMapping("timepicker")
	public String timepicker() {
		return "timepicker";
		
	}
}

package com.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Freelance;

@Controller
public class FreelanceController {

	@PostMapping("regfree")
	public ModelAndView regfree(@ModelAttribute Freelance inputFree) {
		ModelAndView mav=new ModelAndView();
		System.out.println(inputFree.getFreelance_type());
		System.out.println(inputFree.getLabor_type());
		return mav;
	}
}

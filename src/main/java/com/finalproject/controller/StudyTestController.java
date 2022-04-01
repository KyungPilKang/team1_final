package com.finalproject.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Study;
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

	
	
	@GetMapping("testpage")
	public String testpage() {
		return "testfile/testpage";
	}
	
	@GetMapping("studyclass")
	public String studyclass() {
		return "testfile/studyclass";
	}
	
	@GetMapping("studydetail")
	public String studydetail() {
		return "testfile/studydetail";
	}
	
	@GetMapping("studymakerdetail")
	public String studymakerdetail() {
		return "testfile/studymakerdetail";
	}

	
	//참여 기능
	@ResponseBody
	@PostMapping("/attend")
	public boolean Likecheck(@RequestParam(value="no")int study_no,HttpServletRequest request){
		boolean isattends = false;
		try {
			HttpSession session = request.getSession();
			String user_id = (String) session.getAttribute("id");
			//isattends= studyService.checkattends(user_id, study_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isattends;
	}
	
	@PostMapping("studymakermain")
	public String studymakermain() {
		return "testfile/studymakermain";
	}
	
	//스터디메인
	@GetMapping("studymain")
	public String studymain() {
		return "testfile/studymain";
	}
	
	//등록페이지전환
	@RequestMapping("/studyReg")
	public String studyReg() {
		return "testfile/studyReg";
	}
	
	//(1)검색페이지전환
	@RequestMapping("/studyfind")
	public String studyfind() {
		return "testfile/studyfind";
	}
	
	
	//(2)검색 다음버튼
	@PostMapping("studyfindform")
	public ModelAndView studyfindform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println("매칭확인요청:"+ inputstudy.toString());
		try {
		session.setAttribute("findstudy", inputstudy);
		mav.setViewName("testfile/studyfindCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	

	//(3)검색값 확인후 result페이지 반환
	@PostMapping("studyfindcnf")
	public ModelAndView studyfindcnf(@ModelAttribute Study inputstudy) {	
		ModelAndView mav=new ModelAndView();
		System.out.println("검색버튼클릭"+inputstudy.toString());
		mav.setViewName("testfile/studyfindresult");
		return mav; 
	}
	
	//(4)검색결과페이지
	@RequestMapping(value="/studyfindresult", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView studyfindresult(@ModelAttribute Study inputstudy, @RequestParam("study_no") int study_no) {
		ModelAndView mav=new ModelAndView("testfile/studyfindresult");
		return mav; 
	}
	
	/*
	 * //상세게시글
	 * 
	 * @RequestMapping(value="/studydetail", method= {RequestMethod.GET,
	 * RequestMethod.POST}) public String studydetail(@RequestParam("study_no") int
	 * study_no) { return "testfile/studydetail"; }
	 */
	
	@GetMapping("0330")
	public ModelAndView test() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("testfile/studyfindresult");
		return mav; 
	}
	
	
	//(1)수정 다음버튼
	@PostMapping("studymodify")
	public ModelAndView studymodify(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView("testfile/studymodify");
		System.out.println(inputstudy.toString());
		return mav; 
	}
	
	//(2)수정확인요청
	@PostMapping("studymodiform")
	public ModelAndView studymodiform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println("수정확인요청:"+ inputstudy.toString());
		try {
		session.setAttribute("modistudy", inputstudy);
		mav.setViewName("testfile/studymodiCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	
	//(3)수정확인후 수정요청 db
	@PostMapping("studymodicnf")
	public ModelAndView studymodi(@ModelAttribute Study cnfstudy) {
		ModelAndView mav=new ModelAndView();
		//Study cnfstudy = (Study) session.getAttribute("이름");
		//System.out.println("수정확인후 수정요청:"+cnfstudy.toString());
		return mav;
	}
	
	//(1)등록확인요청
	@PostMapping("studyregform")
	public ModelAndView studyregform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println("등록확인요청:"+inputstudy.toString());
		try {
		session.setAttribute("regstudy", inputstudy);
		mav.setViewName("testfile/studyRegCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	//(2)등록확인후 등록요청
	@PostMapping("studyreg")
	public ModelAndView regstudy() {
		ModelAndView mav=new ModelAndView();
		//Study cnfstudy = (Study) session.getAttribute("이름");
		//System.out.println("등록확인후 등록요청:"+cnfstudy.toString());
		return mav;
	}
	

		
}

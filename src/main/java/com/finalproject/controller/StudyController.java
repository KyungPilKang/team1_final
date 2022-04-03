package com.finalproject.controller;

import java.util.List;

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
import com.finalproject.dto.StudyTeam;
import com.finalproject.service.MemberService;
import com.finalproject.service.StudyService;

@Controller
public class StudyController {
	@Autowired
    private ServletContext servletContext;
	
	@Autowired
    private HttpSession session;
		
	@Autowired
	private MemberService memberService;
	
	@Autowired (required=false)
	private StudyService studyservice;

	//스터디메인
	@GetMapping("studymain")
	public String studymain() {
		return "study/studymain";
	}
	
	//스터디등교
	@GetMapping("studyclass")
	public String studyclass() {
		return "study/studyclass";
	}
	
	//스터디등교
	@ResponseBody
	@PostMapping("studyclass")
	public String studyabc(@RequestParam("status") String status) {
		String result = null;
		String user_id = (String) session.getAttribute("id");
		try {
			List<Study> studyList = studyservice.searchStudyByStatus(user_id, status);
			//서비스 만들고 db 값 가져오는지 확인해보기
			for (Study s : studyList) {
				System.out.println(s.getStudy_contents());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//스터디상세페이지 (검색 조회후 게시글선택시, 등교페이지에서 게시글보기연결)
	@GetMapping("studydetail")
	public String studydetail() {
		return "study/studydetail";
	}
	

	//(1)개설자메인 페이지
	@PostMapping("studymakermain")
	public String studymakermain() {
		return "study/studymakermain";
	}
	
	//(2)개설자가 상세글보기 클릭시 보여지는 페이지
	@GetMapping("studymakerdetail")
	public String studymakerdetail() {
		return "study/studymakerdetail";
	}

	
	//(1)검색페이지전환
	@RequestMapping("/studyfind")
	public String studyfind() {
		return "study/studyfind";
	}
	
	
	//(2)검색 다음버튼
	@PostMapping("studyfindform")
	public ModelAndView studyfindform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println("매칭확인요청:"+ inputstudy.toString());
		try {
		session.setAttribute("findstudy", inputstudy);
		mav.setViewName("study/studyfindCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	

	//(3)검색값 확인후 result페이지 반환
	@PostMapping("studyfindcnf")
	public ModelAndView studyfindcnf(@ModelAttribute Study inputstudy) {	
		ModelAndView mav=new ModelAndView();
		//검색값 등록
		try {
		Study findstudycnf=(Study)session.getAttribute("findstudy");
		System.out.println("매칭cnf 요청:"+findstudycnf.toString());
		session.removeAttribute("findstudy");
		mav.setViewName("study/studyfindresult");
		}catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	
	//(4)검색결과페이지
	@RequestMapping(value="/studyfindresult", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView studyfindresult(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView("study/studyfindresult");
		
		return mav; 
	}
	

	@GetMapping("0330")
	public ModelAndView test() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("study/studyfindresult");
		return mav; 
	}
	
	
	//(1)수정 다음버튼
	@PostMapping("studymodify")
	public ModelAndView studymodify(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView("study/studymodify");
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
		mav.setViewName("study/studymodiCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	
	//(3)수정확인후 수정요청 db
	@PostMapping("studymodicnf")
	public ModelAndView studymodi(@ModelAttribute Study cnfstudy) {
		ModelAndView mav=new ModelAndView();
		try {
		Study studymodicnf=(Study)session.getAttribute("modistudy");
		System.out.println("수정확인후 수정 cnf :"+studymodicnf.toString());
		mav.setViewName("study/studymakermain");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav;
	}
	
	
	//(1)등록페이지전환
	@RequestMapping("/studyReg")
	public String studyReg() {
		return "study/studyReg";
	}
	
	//(2)등록확인요청 - 확인
	@PostMapping("studyregform")
	public ModelAndView studyregform(@ModelAttribute Study inputstudy) {
		ModelAndView mav=new ModelAndView();
		System.out.println("등록확인요청:"+inputstudy.toString());
		try {
		session.setAttribute("regstudy", inputstudy);
		mav.setViewName("study/studyRegCheck");
		}  catch(Exception e){
			e.printStackTrace();
		}
		return mav; 
	}
	//(3)등록확인후 등록요청 - 확인
	@PostMapping("studyreg")
	public ModelAndView regstudy() {
		ModelAndView mav=new ModelAndView();
		Study cnfstudy=(Study)session.getAttribute("regstudy");
		session.removeAttribute("regstudy");
		System.out.println("등록확인후 등록요청:"+cnfstudy.toString());
		mav.setViewName("study/studymakermain");
		return mav;
	}
	
	//참여 기능
	@ResponseBody
	@PostMapping("/attend")
	public boolean attendcheck(@RequestParam(value="no")boolean study_no,HttpServletRequest request){
		boolean isattends = study_no;
		try {
			HttpSession session = request.getSession();
			String user_id = (String) session.getAttribute("id");
			//isattends= studyService.checkattends(user_id, study_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isattends;
	}
	

	
		
}

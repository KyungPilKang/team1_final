package com.finalproject.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.dto.Study;
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

	@Autowired
	private StudyService studyservice;

	// 스터디메인
	@GetMapping("studymain")
	public String studymain() {
		return "study/studymain";
	}

	@GetMapping("studyclass")
	public ModelAndView studyclassget(@RequestParam(value = "status", required = false) String status) {
		
		if (status == null) {
			status = "team_apply";
		}
		ModelAndView mav = new ModelAndView("study/studyclass");
		String user_id = (String) session.getAttribute("id");
		try {
			List<Study> studyList = studyservice.searchStudyByStatus("김민정", status); // 서비스 만들고 db 값 가져오는지 확인해보기
			System.out.println(studyList.size());
			mav.addObject("studyList", studyList);
			mav.addObject("status", status);
			for (Study s : studyList) {
				System.out.println(s.getStudy_title());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return mav;
	}

	// (1)개설자메인 페이지
	@PostMapping("studymakermain")
	public ModelAndView studymakermain() {
		ModelAndView mav = new ModelAndView("study/studymakermain");
		String result = null;
		String user_id = (String) session.getAttribute("id");
		String maker = "김민정";
		try {
			if (user_id == maker) {
				List<Study> studyList = studyservice.studymakerList(maker);
				System.out.println(studyList.size());
				mav.addObject("studyList", studyList);
				for (Study s : studyList) {
					System.out.println(s.getStudy_title());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 스터디상세페이지 (검색 조회후 게시글선택시, 등교페이지에서 게시글보기연결)
	// 추후 get 방식에서 post 방식으로 변경 필요
	@GetMapping("/studydetail/{study_no}")
	public ModelAndView studydetail(@PathVariable int study_no) {
		ModelAndView mav = new ModelAndView("study/studydetail");
		String user_id = (String) session.getAttribute("id");
		try {
			Study posted = studyservice.getStudydetail(study_no);
			mav.addObject("studyPosted", posted);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (2)개설자가 상세글보기 클릭시 보여지는 페이지
	// 추후 post 변경
	@GetMapping("studymakerdetail")
	public String studymakerdetail() {
		return "study/studymakerdetail";
	}

	// (1)검색페이지전환
	@GetMapping("/studyfind")
	public String studyfind() {
		return "study/studyfind";
	}

	// (2)검색 다음버튼
	@GetMapping("studyfindform")
	public ModelAndView studyfindform(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView();
		System.out.println("매칭확인요청:" + inputstudy.toString());
		try {
			session.setAttribute("findstudy", inputstudy);
			mav.setViewName("study/studyfindCheck");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (3)검색값 확인후 result페이지 반환
	@GetMapping("studyfindcnf")
	public ModelAndView studyfindcnf(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView();
		// 검색값 등록
		try {
			Study findstudycnf = (Study) session.getAttribute("findstudy");
			System.out.println("매칭cnf 요청:" + findstudycnf.toString());
			session.removeAttribute("findstudy");
			mav.setViewName("study/studyfindresult");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (4)검색결과페이지
	@RequestMapping(value = "/studyfindresult", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView studyfindresult(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView("study/studyfindresult");

		return mav;
	}

	// (1)수정 다음버튼
	// study_no 가지고 넘어가야하는지 추후 확인 필요 ** 
	@PostMapping("studymodify")
	public ModelAndView studymodify(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView("study/studymodify");
		System.out.println(inputstudy.toString());
		return mav;
	}

	// (2)수정확인요청
	@PostMapping("studymodiform")
	public ModelAndView studymodiform(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView();
		System.out.println("수정확인요청:" + inputstudy.toString());
		try {
			session.setAttribute("modistudy", inputstudy);
			mav.setViewName("study/studymodiCheck");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (3)수정확인후 수정요청 db
	@PostMapping("studymodicnf")
	public ModelAndView studymodi(@ModelAttribute Study cnfstudy) {
		ModelAndView mav = new ModelAndView();
		try {
			Study studymodicnf = (Study) session.getAttribute("modistudy");
			System.out.println("수정확인후 수정 cnf :" + studymodicnf.toString());
			mav.setViewName("study/studymakermain");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//삭제
	//study_no 을 가지고 못넘어가짐 , 개설자 상세페이지 구현후 다시 확인 
	@ResponseBody
	@PostMapping("/deletestudy")
	public void deletestudy(@RequestParam(value="no")int study_no) {
		try {
			studyservice.removeStudy(study_no);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// (1)등록페이지전환
	@RequestMapping("/studyReg")
	public String studyReg() {
		return "study/studyReg";
	}

	// (2)등록확인요청 - 확인
	@PostMapping("studyregform")
	public ModelAndView studyregform(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView();
		System.out.println("등록확인요청:" + inputstudy.toString());
		try {
			session.setAttribute("regstudy", inputstudy);
			mav.setViewName("study/studyRegCheck");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (3)등록확인후 등록요청 - 확인
	@PostMapping("studyregcnf")
	public ModelAndView regstudy() {
		ModelAndView mav = new ModelAndView();
		// 임시 maker 설정
		String maker = "김길동";
		try {
			Study cnfstudy = (Study) session.getAttribute("regstudy");
			session.removeAttribute("regstudy");
			System.out.println("등록확인후 등록요청:" + cnfstudy.toString());
			studyservice.regStudy(cnfstudy);
			mav.setViewName("study/studymain");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 참여 기능
	@ResponseBody
	@PostMapping("/attend")
	public boolean attendcheck(@RequestParam int study_no, @RequestParam(value = "status") boolean status, HttpServletRequest request) {
		System.out.println(status);
		String real_stat = "";
		
		try {
			String user_id = (String) session.getAttribute("id");
			if (status == true) {
				System.out.println("참여 상태(1)에서 누른거");
				// 여기서는 status를 "team_applycancle"로 변경한다
				real_stat = "team_applycancle";
			} else {
				System.out.println("미참여 상태(0)에서 누른거");
				// 여기서는 status를 "team_apply"로 변경한다
				real_stat = "team_apply";
				
			}
				//studyservice.checkattends(user_id, study_no, real_stat);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return !status;
	}

}

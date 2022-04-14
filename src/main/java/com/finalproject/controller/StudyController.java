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

import com.finalproject.dto.PageInfo;
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

	@Autowired
	private StudyService studyservice;

	// 스터디메인
	@GetMapping("studymain")
	public String studymain(Model model) {
		String maker = (String)session.getAttribute("username");
		System.out.println("여기"+maker);
		//String maker ="김민정";		
		try {
			String ismaker = studyservice.makerReturn(maker);
			model.addAttribute("ismaker",ismaker);
			System.out.println("가져오는거니?"+ismaker);
		}catch (Exception e) {
			e.printStackTrace();
		}	
		session.removeAttribute("findstudy");
		return "study/studymain";
	}

	//등교하기 페이지 
	@GetMapping("studyclass")
	public ModelAndView studyclassget(@RequestParam(value = "status", required = false) String status) {
		session.removeAttribute("findstudy");
		if (status == null) {
			status = "team_apply";
		}
		ModelAndView mav = new ModelAndView("study/studyclass");
		String user_id = (String) session.getAttribute("username");
		//String maker ="김민정";	
		try {
			List<Study> studyList = studyservice.searchStudyByStatus(user_id, status); // 서비스 만들고 db 값 가져오는지 확인해보기
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
	@GetMapping("/studymakermain")
	public ModelAndView studymakermain(@RequestParam(value = "page", defaultValue = "1") int page) {
		PageInfo pageInfo = new PageInfo();
		session.removeAttribute("findstudy");
		ModelAndView mav = new ModelAndView("study/studymakermain");
		//String result = null;
		String user_id = (String) session.getAttribute("username");
		//String user_id = "김민정";
		try {			
				List<Study> studyList = studyservice.makerList(page, pageInfo, user_id);
				System.out.println(studyList.size());				
				mav.addObject("studyList", studyList);
				mav.addObject("username", user_id);
				mav.addObject("pageInfo", pageInfo);
				for (Study s : studyList) {
					System.out.println(s.getStudy_title());
				}			
		} catch (Exception e) {
			System.out.println("n");
			e.printStackTrace();
		}
		return mav;
	}
	
	// 스터디상세페이지 (검색 조회후 게시글선택시, 등교페이지에서 게시글보기연결)
	// 추후 get 방식에서 post 방식으로 변경 필요
	@GetMapping("/studydetail/{study_no}")
	public ModelAndView studydetail(@PathVariable int study_no) {
		ModelAndView mav = new ModelAndView("study/studydetail");
		String username = (String)session.getAttribute("username");
		try {
			Study posted = studyservice.getStudydetail(study_no);
			mav.addObject("studyPosted", posted);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	//studyclass 등교페이지에서 게시글보기 이동시 컨트롤러
	@GetMapping("/studydetail1/{study_no}")
	public ModelAndView studydetail1(@PathVariable int study_no) {
		ModelAndView mav = new ModelAndView("study/studydetail1");
		try {
			Study posted = studyservice.getStudydetail(study_no);
			mav.addObject("studyPosted", posted);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}


	// 스터디개설자 상세페이지 
	// 참여자 리스트 가져오기
	// 추후 get 방식에서 post 방식으로 변경 필요	
	@GetMapping("/studymakerdetail/{study_no}")
	public ModelAndView studymakerdetail(@PathVariable int study_no, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("study/studymakerdetail");
		try {
			Study posted = studyservice.getStudydetail(study_no);
			List<StudyTeam> studentList = studyservice.getStudentApplyList(study_no);
			for(StudyTeam st : studentList) {
				System.out.println(st.getUser_id());
				System.out.println(st.getTeam_status());
			}
			mav.addObject("studyPosted", posted);	
			mav.addObject("studentList", studentList);		

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@ResponseBody
	@PostMapping("/studymakerdetail/check")
	public String studymakerdetailcheck(@RequestParam int study_no, @RequestParam(value = "studentStatus", required=true) String team_status,@RequestParam(value = "studentName",required=true) String studentName,HttpServletRequest request) {
		//System.out.println("서버 테스트");
		try {
			studyservice.changeApplyAceept(study_no, studentName, team_status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return team_status;
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
		session.removeAttribute("findstudy");
		return "study/studyfind";
	}

	// (2)검색 다음버튼
	@GetMapping("studyfindform")
	public ModelAndView studyfindform(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView();
//		System.out.println("매칭확인요청:" + inputstudy.toString());
		try {
			session.setAttribute("findstudy", inputstudy);
			mav.setViewName("study/studyfindCheck");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@GetMapping("restudyfindform")
	public ModelAndView restudyfindform() {
		ModelAndView mav = new ModelAndView();
		try {
			mav.setViewName("study/studyfindCheck");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (3)검색값 확인후 result페이지 반환
	@GetMapping("studyfindcnf")
	public ModelAndView studyfindcnf(@RequestParam(value = "page", defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView();
		PageInfo pageInfo = new PageInfo();
		// 검색값 등록
		try {
			Study findstudycnf = (Study) session.getAttribute("findstudy");
			List<Study> serchedStudy = studyservice.findInfoAll(page, pageInfo, findstudycnf);
			System.out.println("컨트롤러 테스트");
			mav.addObject("serchedStudy", serchedStudy);
			mav.addObject("pageInfo", pageInfo);
//			session.removeAttribute("findstudy");
			mav.setViewName("study/studyfindresult");
//			System.out.println("테스트");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// (4)검색결과페이지
//	@RequestMapping(value = "/studyfindresult", method = { RequestMethod.GET, RequestMethod.POST })
//	public ModelAndView studyfindresult(@ModelAttribute Study inputstudy) {
//		ModelAndView mav = new ModelAndView("study/studyfindresult");
//		return mav;
//	}

	// (1)수정 다음버튼
	@PostMapping("studymodify")
	public ModelAndView studymodify(@ModelAttribute Study inputstudy) {
		ModelAndView mav = new ModelAndView("study/studymodify");
		mav.addObject("study_no", inputstudy.getStudy_no());
		System.out.println("스터디수정버튼 처음"+inputstudy.toString());
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
		String maker = (String)session.getAttribute("username");
		try {
			Study studymodicnf = (Study) session.getAttribute("modistudy");			
			studymodicnf.setMaker(maker);
			System.out.println("수정확인후 수정 cnf :" + studymodicnf.toString());
			studyservice.updateStudy(studymodicnf);
			mav.setViewName("redirect:/studymain");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.removeAttribute("modistudy");
		return mav;
	}
	
	//삭제
	@PostMapping("/deletestudy")
	public String deletestudy(@RequestParam(value="study_no")int study_no) {
		try {
			studyservice.removeStudy(study_no);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/studymain";
	}
	
	
	// (1)등록페이지전환
	@RequestMapping("/studyReg")
	public String studyReg() {
		session.removeAttribute("findstudy");
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
		//String maker = "김길동";
		String maker = (String)session.getAttribute("username");
		try {
			Study cnfstudy = (Study) session.getAttribute("regstudy");
			cnfstudy.setMaker(maker);
			session.removeAttribute("regstudy");
			System.out.println("등록확인후 등록요청:" + cnfstudy.toString());
			studyservice.regStudy(cnfstudy);
			mav.setViewName("redirect:/studymain");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 참여 기능
	@ResponseBody
	@PostMapping("/attend")
	public String attendcheck(@RequestParam int study_no, @RequestParam(value = "status") String status,HttpServletRequest request) {
		System.out.println("서버 테스트");
		System.out.println(status);
		
		try {
			HttpSession session = request.getSession();
			String user_id = (String) session.getAttribute("username");
			studyservice.changeAttend(user_id, study_no, status);
			System.out.println(study_no);
			System.out.println(status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}

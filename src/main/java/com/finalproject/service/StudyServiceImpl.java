package com.finalproject.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.StudyDAO;
import com.finalproject.dto.PageInfo;
import com.finalproject.dto.Study;
import com.finalproject.dto.StudyTeam;

@Service
public class StudyServiceImpl implements StudyService {
	@Autowired 
	StudyDAO studyDAO;
	
	/*
	 * @Autowired StudyTeamDAO studyteamDAO;
	 */
	
	@Override
	public void regStudy(Study study) throws Exception {
		//스터디 등록
		studyDAO.regStudy(study);
		
	}

	@Override
	public void updateStudy(Study study) throws Exception {
		System.out.println("수정확인후 수정 cnf2 :" + study.toString());
		//스터디 수정 
		studyDAO.updateStudy(study);
		
	}

	@Override
	public void removeStudy(int study_no) throws Exception {
		//스터디 삭제
		studyDAO.removeStudy(study_no);	
	}


	@Override
	public List<Study> makerList(int page, PageInfo pageInfo, String maker) throws Exception {
		// 내가 쓴 글 :  스터디 게시글 리스트 반환(개설자)
		//int listCount = studyDAO.makerListCount(maker);
		int listCount = studyDAO.makerReturn(maker);
        int maxPage = (int)Math.ceil((double)listCount/10);
        int startPage=((int)((double)page/10+0.9)-1)*10+1;
        int endPage=startPage+10-1;
        if(endPage>maxPage) endPage=maxPage;
        pageInfo.setStartPage(startPage);
        pageInfo.setEndPage(endPage);
        pageInfo.setMaxPage(maxPage);
        pageInfo.setPage(page);
        pageInfo.setListCount(listCount);
        int startrow = (page-1)*10+1;
		return studyDAO.makerList(startrow, maker);
	}
	
	@Override
	public Study getStudydetail(int study_no) throws Exception {
		//하나의 게시글정보 가져오기
		return studyDAO.getStudydetail(study_no);
	}
	
	@Override
	public List<Study> searchStudyByStatus(String user_id, String status) throws Exception {
	    //옵션 선택 값에 따른 일반유저 게시물 반환 (studyclass 등교하기 페이지) 
		Map<String, String> studybystatus = new HashMap<String, String>();
	    studybystatus.put("user_id", user_id);
	    studybystatus.put("status", status);
		
	    System.out.println(studybystatus.get("user_id"));
	    System.out.println(studybystatus.get("status"));
	    
		return studyDAO.searchStudyByStatus(studybystatus);
	}
	
	@Override
	public void changeAttend(String user_id, int study_no, String status) throws Exception {
		// 참여, 참여취소
		System.out.println("ServiceImple 성공");
		System.out.println(user_id);
		
		Map<String, Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("study_no", study_no);
		
		System.out.println("a "+study_no);
		System.out.println("a "+user_id);
		System.out.println("a "+status);
		
		if (status.equals("team_apply")) {
			System.out.println("b "+study_no);
			System.out.println("b "+user_id);
			System.out.println("b "+status);
			
			map.put("status", status);
			studyDAO.checkAttend(map);
		} else {
			studyDAO.cancelAttend(map);
		}
	}

	@Override
	public List<StudyTeam> attendInfo(int study_no) throws Exception {
		//
		return null;
	}

	@Override
	public void changeApplyAceept(int study_no, String user_id, String team_status) throws Exception {
		//참여수락, 수락취소 
		Map<String,Object> map = new HashMap<>();
		
		map.put("study_no", study_no);
		map.put("student_name", user_id);
		map.put("team_status", team_status);
		System.out.println(team_status + "입니다");
		if(team_status.equals("team_accept")) {
			System.out.println("b "+study_no);
			System.out.println("b "+user_id);
			System.out.println("b "+team_status);

			studyDAO.changeApplyAceept(map);
		}else {
			team_status = "team_reject";
			System.out.println(map.size());
			studyDAO.changeApplyAceept(map);
		}
		
	}
	
	@Override 
	public List<StudyTeam> getStudentApplyList(int study_no) throws Exception {
		//참여자정보리스트 가져오기 
		return studyDAO.selectStudentApplyList(study_no);
		
	}

//	@Override
//	public List<Study> findInfoAll(int page, Study study) throws Exception {
//		List<Study> temp=(List<Study>)studyDAO.serchListAll(study);
//		List<Study> studyList=new ArrayList<>();
//		page=2;
//		if(page==1) {
//			studyList=temp;
//		} else {
//			if(temp.size()<=10) {
//				studyList=temp;
//			} else {
//				if(temp.size()<=(page*10*2)) {
//					if(temp.size()%(page*10)==1) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 1);
//						System.out.println(temp.size());
//						System.out.println("서비스 테스트");
//					} else if(temp.size()%(page*10)==2) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 2);
//					} else if(temp.size()%(page*10)==3) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 3);
//					} else if(temp.size()%(page*10)==4) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 4);
//					} else if(temp.size()%(page*10)==5) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 5);
//					} else if(temp.size()%(page*10)==6) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 6);
//					} else if(temp.size()%(page*10)==7) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 7);
//					} else if(temp.size()%(page*10)==8) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 8);
//					} else if(temp.size()%(page*10)==9) {
//						studyList=(List<Study>)temp.subList((page-1)*10, 9);
//					} else {
//						studyList=(List<Study>)temp.subList((page-1)*10, 10);
//					}
//				} else {
//					studyList=(List<Study>)temp.subList((page-1)*10, 10);
//				}
//			}
//		}
//		return studyList;
//	}
	
	@Override
	public List<Study> findInfoAll(int page, PageInfo pageInfo, Study study) throws Exception {
		int listCount = studyDAO.selectStudyCount();
        int maxPage = (int)Math.ceil((double)listCount/10);
        int startPage=((int)((double)page/10+0.9)-1)*10+1;
        int endPage=startPage+10-1;
        if(endPage>maxPage) endPage=maxPage;
        pageInfo.setStartPage(startPage);
        pageInfo.setEndPage(endPage);
        pageInfo.setMaxPage(maxPage);
        pageInfo.setPage(page);
        pageInfo.setListCount(listCount);
        int startrow = (page-1)*10+1;
        return studyDAO.selectStudyList(startrow, study);
	}

	@Override
	public String makerReturn(String maker) throws Exception {
		 int temp=studyDAO.makerReturn(maker);
		 String tempResult = null;
		 if(temp>0){
			 tempResult  = "yes";
			 System.out.println("yes 에서 "+tempResult);
			 return tempResult;
			 } else {
			 tempResult  = "no";
			 System.out.println("no 에서 "+tempResult);
			 return tempResult;
		}
	}

	@Override
	public int getTypeCount(String study_type) throws Exception {
		return studyDAO.getTypeCount(study_type);
	}


}

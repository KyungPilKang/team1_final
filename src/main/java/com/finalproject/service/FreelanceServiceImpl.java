package com.finalproject.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.FreelanceDAO;
import com.finalproject.dto.Freelance;
import com.finalproject.dto.Member;

@Service
public class FreelanceServiceImpl implements FreelanceService {
	
	@Autowired
	FreelanceDAO freelanceDAO;

	@Override
	public void regFreelance_freeType1(Freelance free, Member mem) throws Exception {
		//멤버 객체 받아와서 프리랜서 객체에 set
		free.setMember_no(String.valueOf(mem.getNo()));
		free.setName(mem.getName());
	
		free.setAge(mem.getAge());
		int tempAge=Integer.parseInt(free.getAge());
		if(tempAge>=20&&tempAge<25) {
			free.setAge_section("1");
		} else if(tempAge>=25&&tempAge<30) {
			free.setAge_section("2");
		} else if(tempAge>=30&&tempAge<35) {
			free.setAge_section("3");
		} else if(tempAge>=35&&tempAge<40) {
			free.setAge_section("4");
		} else {
			free.setAge_section("5");
		}
		free.setEmail(mem.getEmail());
		free.setPhone(mem.getPhone());
		
		freelanceDAO.regFreelance_freeType1(free);
	}

	@Override
	public void regFreelance_freeType2(Freelance free) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void regFreelance_freeType3(Freelance free) throws Exception {
		// TODO Auto-generated method stub
		
	}

}

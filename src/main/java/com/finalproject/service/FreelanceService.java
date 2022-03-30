package com.finalproject.service;

import com.finalproject.dto.Freelance;
import com.finalproject.dto.Member;

public interface FreelanceService {
	public void regFreelance_freeType1(Freelance free, Member mem) throws Exception;
	public void regFreelance_freeType2(Freelance free) throws Exception;
	public void regFreelance_freeType3(Freelance free) throws Exception;
}

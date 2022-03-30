package com.finalproject.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.finalproject.dto.Freelance;

@Mapper
@Repository
public interface FreelanceDAO {
	public void regFreelance_freeType1(Freelance free) throws Exception;
	public void regFreelance_freeType2(Freelance free) throws Exception;
	public void regFreelance_freeType3(Freelance free) throws Exception;
}

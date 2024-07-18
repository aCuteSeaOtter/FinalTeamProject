package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.Member2VO;

@Mapper
public interface Member2DAO {

	public 	void registForm(Member2VO member2VO);
	public 	Member2VO loginForm(Member2VO member2VO);
	public	void updateForm(Member2VO member2VO);
	public 	void deleteForm(Member2VO member2VO);
	Member2VO checklogin(Member2VO member2VO);
	
}
 
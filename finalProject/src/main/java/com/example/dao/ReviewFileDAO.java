package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.ReviewFileVO;

@Mapper
public interface ReviewFileDAO {
	
	public void insertFile(ReviewFileVO vo);
	
	public ReviewFileVO selectFile(ReviewFileVO vo);
	
	public int selectId();
	
}

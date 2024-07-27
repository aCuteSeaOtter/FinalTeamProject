package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.ReviewFileVO;

@Mapper
public interface ReviewFileDAO {
	
	// 파일 추가
	public void insertFile(ReviewFileVO vo);
	
	// 파일 정보 조회
	public ReviewFileVO selectFile(ReviewFileVO vo);
	
	// 파일 ID 조회, 정수로 반환
	public int selectId();
	
}
 
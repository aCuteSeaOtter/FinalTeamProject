package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.domain.ReviewVO;

@Mapper
public interface ReviewDAO {
	
	List<ReviewVO> getReviewList(ReviewVO vo) ;
	
	List<HashMap<String, Object>> getReview(ReviewVO vo);
	
	void insertReview(ReviewVO vo);
	
	void updateReview(ReviewVO vo);
	
	void deleteReview(ReviewVO vo);
	
	void incrementViewCount(ReviewVO vo);
	
}

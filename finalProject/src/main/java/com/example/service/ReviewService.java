package com.example.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;

public interface ReviewService {
	
	// 리뷰 목록 출력
	List<ReviewVO> getReviewList(HashMap<String, Object> map);
	
	// 리뷰 상세보기
	HashMap<String, Object> getReview(ReviewVO vo); 
	
	// 리뷰 작성
	void insertReview(ReviewVO vo, List<ReviewFileVO> fileList);
	
	// 리뷰 수정
	void updateReview(ReviewVO vo);
	
	// 리뷰 삭제
	void deleteReview(ReviewVO vo);
	
	// 리뷰 조회수
	void incrementViewCount(ReviewVO vo);
}

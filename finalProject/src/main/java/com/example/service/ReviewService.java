package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.ReviewVO;
import com.example.domain.ReviewFileVO;

public interface ReviewService {
	List<ReviewVO> getReviewList(ReviewVO vo);
	
	HashMap getReview(ReviewVO vo); 
	
	void insertReview(ReviewVO vo, ReviewFileVO fvo);
	
	void updateReview(ReviewVO vo);
	
	void deleteReview(ReviewVO vo);
	
	void incrementViewCount(ReviewVO vo);
	
}

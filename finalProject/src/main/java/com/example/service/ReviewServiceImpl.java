package com.example.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReviewDAO;
import com.example.dao.ReviewFileDAO;
import com.example.domain.ReviewVO;
import com.example.domain.ReviewFileVO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired ReviewFileDAO reviewFileDAO;

	public List<ReviewVO>getReviewList(ReviewVO vo) {
		return reviewDAO.getReviewList(vo);
	}
	
	public HashMap getReview(ReviewVO vo) {
		return reviewDAO.getReview(vo);
	}
	
	@Transactional
	public void insertReview(ReviewVO vo, ReviewFileVO fvo) {
		// 파일첨부가 있는 경우라면
		if(fvo !=null) {
			reviewFileDAO.insertFile(fvo);
			vo.setReview_fileid( reviewFileDAO.selectId());
		}
		
		reviewDAO.insertReview(vo);
	}
	
	public void updateReview(ReviewVO vo) {
		
		reviewDAO.updateReview(vo);
	}
	
	public void deleteReview(ReviewVO vo) {
		
		reviewDAO.deleteReview(vo);
	}
	
	public void incrementViewCount(ReviewVO vo) {
		reviewDAO.incrementViewCount(vo);
    }
}

package com.example.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReviewDAO;
import com.example.dao.ReviewFileDAO;
import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {
    
	// ReviewDAO 객체 자동 주입
    @Autowired
    private ReviewDAO reviewDAO;
    
    // ReviewFileDAO 객체 자동 주입
    @Autowired 
    private ReviewFileDAO reviewFileDAO;

    // 리뷰 목록 보기
    public List<ReviewVO> getReviewList(HashMap<String, Object> map) {
        return reviewDAO.getReviewList(map);
    }
    
    // 리뷰 상세보기
    public HashMap<String, Object> getReview(ReviewVO vo) {
       
    	// 데이터베이스에서 리뷰 목록을 조회
        List<HashMap<String, Object>> reviewList = reviewDAO.getReview(vo);
        // 결과를 저장할 맵 객체 생성
        HashMap<String, Object> result = new HashMap<>();
        
        // 리뷰 리스트 전체를 담을 리스트 생성
        List<HashMap<String, Object>> reviews = new ArrayList<>();
        // 리스트 하나를 담을 reviewOne 생성
        HashMap<String, Object> reviewOne = new HashMap<String, Object>(); 
        // 리뷰 목록 반복문
        for(int i = 0; i < reviewList.size(); i++) {
        	// 현재 리뷰를 가져옴
            HashMap<String, Object> review = reviewList.get(i);
            // 첫 번째 리뷰를 reviewOne에 저장
            result.put("reviewOne", review);
            // 각 리뷰를 리스트에 추가
            reviews.add(review); 
            
        }
        // 모든 리뷰를 reviews에 담음
        result.put("reviews", reviews); 
        
        return result;
    }

    // 리뷰 작성
    @Transactional
    public void insertReview(ReviewVO vo, List<ReviewFileVO> fileList) {
    	// ReviewDAO의 insertReview 메서드 호출
        reviewDAO.insertReview(vo);
        
        // 파일 리스트가 null이 아니고 비어 있지 않은 경우
        if (fileList != null && !fileList.isEmpty()) {
        	// 파일 리스트 반복문으로 각 파일  처리
            for (ReviewFileVO fvo : fileList) {
            	// 각 파일 객체에 리뷰 ID를 설정
                fvo.setReview_id(vo.getReview_id());
                // 파일 정보 삽입
                reviewFileDAO.insertFile(fvo);
            }
        }
    }
    
    // 리뷰 수정
    public void updateReview(ReviewVO vo) {
        reviewDAO.updateReview(vo);
    }
    
    // 리뷰 삭제
    public void deleteReview(ReviewVO vo) {
        reviewDAO.deleteReview(vo);
    }
    
    // 리뷰 조회수
    public void incrementViewCount(ReviewVO vo) {
        reviewDAO.incrementViewCount(vo);
    }
}

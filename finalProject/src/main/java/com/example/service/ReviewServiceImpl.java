package com.example.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.ReviewDAO;
import com.example.dao.ReviewFileDAO;
import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {
    
    @Autowired
    private ReviewDAO reviewDAO;
    
    @Autowired 
    private ReviewFileDAO reviewFileDAO;

    @Override
    public List<ReviewVO> getReviewList(ReviewVO vo) {
        return reviewDAO.getReviewList(vo);
    }
    
    @Override
    public HashMap<String, Object> getReview(ReviewVO vo) {
       
        List<HashMap<String, Object>> reviewList = reviewDAO.getReview(vo);
        HashMap<String, Object> result = new HashMap<>();
        
        System.out.println("ReviewServiceImpl list : "+reviewList);
        
        // 리뷰 리스트 전체를 담을 리스트 생성
        List<HashMap<String, Object>> reviews = new ArrayList<>();
        // 리스트 하나를 담을 reviewOne 생성
        HashMap<String, Object> reviewOne = new HashMap<String, Object>(); 
        for(int i = 0; i < reviewList.size(); i++) {
            HashMap<String, Object> review = reviewList.get(i);
            result.put("reviewOne", review); // 리스트 하나만 가져오기
            System.out.println(review);
            reviews.add(review); // 각 리뷰를 리스트에 추가
            
        }
        
        result.put("reviews", reviews); // 모든 리뷰를 reviews에 담음
        
        return result;
    }

    
    @Transactional
    @Override
    public void insertReview(ReviewVO vo, List<ReviewFileVO> fileList) {
        // 리뷰를 삽입하고 review_id를 가져옵니다.
        reviewDAO.insertReview(vo);
        
        // 파일 첨부가 있는 경우 review_id를 설정하고 파일 정보를 삽입합니다.
        if (fileList != null && !fileList.isEmpty()) {
            for (ReviewFileVO fvo : fileList) {
                fvo.setReview_id(vo.getReview_id());
                reviewFileDAO.insertFile(fvo);
            }
        }
    }
    
    @Override
    public void updateReview(ReviewVO vo) {
        reviewDAO.updateReview(vo);
    }
    
    @Override
    public void deleteReview(ReviewVO vo) {
        reviewDAO.deleteReview(vo);
    }
    
    @Override
    public void incrementViewCount(ReviewVO vo) {
        reviewDAO.incrementViewCount(vo);
    }
}

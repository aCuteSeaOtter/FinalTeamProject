package com.example.service;

import java.util.HashMap;
import java.util.List;


import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;

public interface ReviewService {
   
   // 리뷰 목록 출력
   List<ReviewVO> getReviewList(HashMap<String, Object> map, int page, int pageSize);

   // 리뷰 총 개수 / 페이징용
   int getTotalCount(HashMap<String, Object> map);
   
   // 조회수 기준 상위 리뷰 조회
   List<ReviewVO> getTopReviewsByViewCount(int limit);
   
   // 좋아요순 기준 상위 리뷰 조회
   List<ReviewVO> getTopReviewsByLikeCount(int limit);
   
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

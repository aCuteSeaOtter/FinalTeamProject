package com.example.domain;

import java.util.List;

import lombok.Data;

@Data
public class ReviewVO {
   
   private int    	  review_id;         // 리뷰 번호
   private String     member_email;      // 회원 이메일
   private String     admin_id;         // 관리자 아이디
   private String     review_title;      // 리뷰 제목
   private String     review_content;      // 리뷰 내용
   private String     review_regdate;      // 리뷰 등록일
   private int    review_cnt;         // 리뷰 조회수
   private int    review_star;      // 리뷰 별점
   private int    review_like;      // 리뷰 좋아요
   private int    review_hate;      // 리뷰 싫어요
}


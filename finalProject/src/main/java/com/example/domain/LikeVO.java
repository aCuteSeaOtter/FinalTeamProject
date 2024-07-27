package com.example.domain;

import lombok.Data;

@Data 
public class LikeVO {
	
	private int 	like_id;		// 좋아요 번호
	private String 	member_email;	// 회원 이메일
	private int 	review_id;		// 리뷰번호
	private int 	like_state;		// 좋아요 상태
}

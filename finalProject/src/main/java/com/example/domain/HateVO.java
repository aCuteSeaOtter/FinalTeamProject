package com.example.domain;

import lombok.Data;

@Data
public class HateVO {

	private int hate_id;		// 싫어요 번호
	private String member_email;// 회원 이메일
	private int review_id;		// 리뷰번호
	private int hate_state;		// 싫어요 상태
}

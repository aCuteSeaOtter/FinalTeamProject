package com.example.domain;

import lombok.Data;

@Data
public class QuestionVO {
	
	int 	que_id;			// 문의 번호
	String 	que_regdate;	// 문의 작성 날짜
	String  member_email;	// 회원 이메일
	String  que_title;		// 문의 제목
	String  que_content;	// 문의 내용
	String  que_state;		// 답변 여부
	String  que_secret;		// 문의 비밀글 
}

package com.example.domain;

import lombok.Data;

@Data
public class AnswerVO {
	
	private int 	ans_id;			// 답변 번호
	private int 	que_id;			// 문의 번호
	private String  ans_title;		// 답변 제목
	private String 	ans_content;	// 답변 내용
	private String 	ans_regdate;	// 답변 날짜
	private String	admin_id;		// 관리자 아이디
}

package com.example.domain;

import lombok.Data;

@Data
public class NoticeVO {

	private int notice_id;			// 공지 번호
	private String notice_title;	// 공지 제목
	private String notice_content;	// 공지 내용
	private String notice_regdate;	// 공지 작성 날짜
	private String admin_id;		// 관리자 아이디
}

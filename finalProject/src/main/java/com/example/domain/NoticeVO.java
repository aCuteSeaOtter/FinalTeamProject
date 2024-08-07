package com.example.domain;

import lombok.Data;

@Data
public class NoticeVO {

	private int notice_id;
	private String notice_title;
	private String notice_content;
	private String notice_regdate;
	private String admin_id;
}

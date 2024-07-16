package com.example.domain;

import lombok.Data;

@Data
public class ReplyCommentVO {
	
	private int RNO; // 댓글 번호
	private int RCNO; // 대댓글 번호
	private String replyComment; // 대댓글
	private String replyCommenter; // 대댓글 작성자
	private String replyCommentdate; // 대댓글 작성 날짜
}

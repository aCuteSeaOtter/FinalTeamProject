package com.example.domain;

import lombok.Data;

@Data
public class ReplyVO {
	
	private int reply_id;		// 대댓글번호
	private String member_email;	// 대댓글작성자
	private int comment_id;		// 댓글번호 ( 대댓글이 달릴 댓글 )
	private String reply_content;	// 대댓글내용
	private String reply_regdate ;	// 대댓글작성일
}

package com.example.domain;

import lombok.Data;

@Data
public class CommentVO {
	
	private int comment_id;			// 댓글번호
	private int review_id;			// 게시글번호 ( 댓글이 달릴 게시글 )
	private String member_email;		// 댓글작성자
	private String comment_content;		// 댓글내용
	private String comment_regdate ;	// 댓글작성일
}

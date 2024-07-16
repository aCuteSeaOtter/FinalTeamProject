package com.example.domain;

import lombok.Data;

@Data
public class ReportVO {
	
	private Integer reportNo; // 신고번호
	private String reportId; //신고자
	private String reportReason; // 신고 사유
	private String reportType; // 신고 유형
	private String reportDate; // 신고 날짜
	private Integer seq; // 게시물
	private Integer rno; // 댓글 번호
	private Integer rcno; // 대댓글 번호
}

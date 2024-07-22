package com.example.domain;

import lombok.Data;

@Data
public class ReportVO {
   
   private Integer report_id;      // 신고 번호
   private Integer review_id;      // 리뷰 번호
   private String member_email;   // 회원 이메일
   private String damin_id;      // 관리자 아이디
   private String report_regdate;   // 신고일
   private String report_state;   // 신고 처리 여부
   private String report_type;      // 신고 유형
   private String report_content;   // 신고 내용
   private Integer comment_id;      // 댓글 번호
   private Integer reply_id;      // 대댓글 번호
}

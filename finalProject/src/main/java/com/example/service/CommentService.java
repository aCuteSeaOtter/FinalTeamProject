package com.example.service;

import java.util.List;

import com.example.domain.CommentVO;

public interface CommentService {

   // 댓글추가
   Integer insertComment(CommentVO vo);
   // 댓글목록보기
   public List<CommentVO> selectAllComment(Integer review_id);
   // 댓글삭제
   Integer deleteComment(Integer comment_id);
   
   void updateComment(CommentVO vo);
}
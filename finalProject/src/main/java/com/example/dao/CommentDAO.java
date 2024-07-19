package com.example.dao;

import java.util.List;

import com.example.domain.CommentVO;

   public interface CommentDAO {

   public Integer insertComment(CommentVO vo); 
   
   public List<CommentVO> selectAllComment(Integer review_id);
   
   public int deleteComment(Integer comment_id);
   
   public void updateComment(CommentVO vo);
}
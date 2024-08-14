package com.example.dao;

import java.util.List;
import java.util.Map;

import com.example.domain.CommentVO;


	public interface CommentDAO {
		
	// 댓글 작성
	public Integer insertComment(CommentVO vo); 
	
	// 댓글 목록 출력
	public List<Map<String, Object>> selectAllComment(Integer review_id);
	
	// 댓글 삭제
	public int deleteComment(Integer comment_id);
} 

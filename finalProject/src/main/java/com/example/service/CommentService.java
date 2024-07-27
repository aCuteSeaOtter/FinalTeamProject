package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.CommentVO;

public interface CommentService {

	// 댓글추가 
	Integer insertComment(CommentVO vo);
	// 댓글목록보기
	public List<Map<String, Object>> selectAllComment(Integer review_id);
	// 댓글삭제
	Integer deleteComment(Integer comment_id);
}

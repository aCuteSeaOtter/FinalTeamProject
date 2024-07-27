package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.CommentDAO;
import com.example.domain.CommentVO;

@Service
public class CommentServiceImpl implements CommentService{

	// CommentDAO 객체 자동 주입
	@Autowired 
	CommentDAO CommentDAO;
	 
	// 댓글 작성
	public Integer insertComment(CommentVO vo) {
		// CommentDAO의 insertComment 메서드를 호출
		Integer result = CommentDAO.insertComment(vo);
		return result;
	}

	// 댓글 목록 출력
	public List<Map<String, Object>> selectAllComment(Integer review_id) {
	       return CommentDAO.selectAllComment(review_id);
	   }
	
	
	// 댓글 삭제
	public Integer deleteComment(Integer comment_id) {
		return CommentDAO.deleteComment(comment_id);
	}
}

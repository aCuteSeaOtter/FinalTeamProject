package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.CommentDAO;
import com.example.domain.CommentVO;

@Service
public class CommentServiceImpl implements CommentService{

	@Autowired 
	CommentDAO CommentDAO;
	 
	@Override
	public Integer insertComment(CommentVO vo) {
		Integer result = CommentDAO.insertComment(vo);
		return result;
	}

	public List<Map<String, Object>> selectAllComment(Integer review_id) {
	       return CommentDAO.selectAllComment(review_id);
	   }
	
	
	@Override
	public Integer deleteComment(Integer comment_id) {
		return CommentDAO.deleteComment(comment_id);
	}
	
	public void updateComment(CommentVO vo) {
		CommentDAO.updateComment(vo);
	}
}

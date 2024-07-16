package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReplyCommentDAO;
import com.example.domain.ReplyCommentVO;

@Service("replyCommentService")
public class ReplyCommentServiceImpl implements ReplyCommentService{
	
	@Autowired
	ReplyCommentDAO replyCommentDAO;
	
	public Integer insertReplyComment(ReplyCommentVO vo) {
		Integer result = replyCommentDAO.insertReplyComment(vo);
		return result; 
	}

	@Override
	public List<ReplyCommentVO> selectAllReplyComment(Integer rno) {
		
		return replyCommentDAO.selectAllReplyComment(rno);
	}
	
	public Integer deleteReplyComment(Integer rcno) {
		return replyCommentDAO.deleteReplyComment(rcno);
	}
	
}

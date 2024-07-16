package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReplyCommentDAO;
import com.example.dao.ReplyDAO;
import com.example.domain.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyDAO replyDAO;
	
	 @Autowired
	 ReplyCommentDAO replyCommentDAO;
	 
	@Override
	public Integer insertReply(ReplyVO vo) {
		Integer result = replyDAO.insertReply(vo);
		return result;
	}

	@Override
	public List<ReplyVO> selectAllReply(Integer bno) {
		
		return replyDAO.selectAllReply(bno);
	}
	
	
	@Override
	public Integer deleteReply(Integer rno) {
		return replyDAO.deleteReply(rno);
	}
	
	public void updateReply(ReplyVO vo) {
		replyDAO.updateReply(vo);
	}
}

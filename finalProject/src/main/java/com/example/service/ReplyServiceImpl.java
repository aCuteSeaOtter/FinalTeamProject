package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReplyDAO;
import com.example.domain.CommentVO;
import com.example.domain.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	ReplyDAO replyDAO;
	
	public Integer insertReply(ReplyVO vo) {
		Integer result = replyDAO.insertReply(vo);
		return result; 
	}

	@Override
	public List<Map<String, Object>> selectAllReply(Integer comment_id) {
		
		return replyDAO.selectAllReply(comment_id);
	}
	
	public Integer deleteReply(Integer reply_id) {
		return replyDAO.deleteReply(reply_id);
	}
	
}

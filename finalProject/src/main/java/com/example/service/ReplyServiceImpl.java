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
	
	// ReplyDAO 객체 자동 주입
	@Autowired
	ReplyDAO replyDAO;
	
	// 대댓글 작성
	public Integer insertReply(ReplyVO vo) {
		// ReplyDAO의 insertReply 메서드 호출
		return replyDAO.insertReply(vo);
	} 

	// 대댓글 목록 보기
	public List<Map<String, Object>> selectAllReply(Integer comment_id) {
		// ReplyDAO의 selectAllReply 메서드 호출
		return replyDAO.selectAllReply(comment_id);
	}
	
	// 대댓글 삭제
	public Integer deleteReply(Integer reply_id) {
		// ReplyDAO의 deleteReply 메서드 호출
		return replyDAO.deleteReply(reply_id);
	}
	
}

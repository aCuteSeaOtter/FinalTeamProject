package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.ReplyCommentVO;

@Repository("replyCommentDAO")
public class ReplyCommentDAOImpl implements ReplyCommentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public Integer insertReplyComment(ReplyCommentVO vo) {
		return mybatis.insert("ReplyCommentDAO.insertReplyComment", vo);
	}

	public List<ReplyCommentVO> selectAllReplyComment(Integer rno) {
		return mybatis.selectList("ReplyCommentDAO.selectAllReplyComment", rno);
	}
	
	public int deleteReplyComment(Integer rcno) {
		return mybatis.delete("ReplyCommentDAO.deleteReplyComment", rcno);
	}
}

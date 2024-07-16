package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.ReplyVO;

@Repository("replyDAO")
public class ReplyDAOImpl implements ReplyDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertReply(ReplyVO vo) {
		return mybatis.insert("ReplyDAO.insertReply", vo);
	}

	public List<ReplyVO> selectAllReply(Integer bno) {
		return mybatis.selectList("ReplyDAO.selectAllReply", bno);
	}

	@Override
	public int deleteReply(Integer rno) {
		return mybatis.delete("ReplyDAO.deleteReply", rno);
	}

	@Override
	public void updateReply(ReplyVO vo) {
		mybatis.update("ReplyDAO.updateReply", vo);
	}
	
}

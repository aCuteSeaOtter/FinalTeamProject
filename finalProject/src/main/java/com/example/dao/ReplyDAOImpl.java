package com.example.dao;

import java.util.List;
import java.util.Map;

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

	public List<Map<String, Object>> selectAllReply(Integer comment_id) {
		return mybatis.selectList("ReplyDAO.selectAllReply", comment_id);
	}
	
	public int deleteReply(Integer reply_id) {
		return mybatis.delete("ReplyDAO.deleteReply", reply_id);
	}
}

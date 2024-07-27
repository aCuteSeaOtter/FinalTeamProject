package com.example.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.ReplyVO;

@Repository("replyDAO")
public class ReplyDAOImpl implements ReplyDAO{
	
	// mybatis 객체 자동 주입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 대댓글 작성
	public Integer insertReply(ReplyVO vo) {
		return mybatis.insert("ReplyDAO.insertReply", vo);
	} 

	// 대댓글 목록 출력
	public List<Map<String, Object>> selectAllReply(Integer comment_id) {
		return mybatis.selectList("ReplyDAO.selectAllReply", comment_id);
	}
	
	// 대댓글 삭제
	public int deleteReply(Integer reply_id) {
		return mybatis.delete("ReplyDAO.deleteReply", reply_id);
	}
}

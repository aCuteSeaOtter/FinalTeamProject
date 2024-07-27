package com.example.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.CommentVO;

@Repository("commentDAO")
public class CommentDAOImpl implements CommentDAO{
	
	// mybatis 객체 자동 주입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 뎃글 작성
	public Integer insertComment(CommentVO vo) {
		return mybatis.insert("commentDAO.insertComment", vo);
	}

	// 댓글 목록 출력
	public List<Map<String, Object>> selectAllComment(Integer review_id) {
	      return mybatis.selectList("commentDAO.selectAllComment", review_id);
	   }
 
	// 댓글 삭제
	@Override
	public int deleteComment(Integer comment_id) {
		return mybatis.delete("commentDAO.deleteComment", comment_id);
	}
}

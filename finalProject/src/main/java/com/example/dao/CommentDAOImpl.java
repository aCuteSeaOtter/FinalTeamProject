package com.example.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.CommentVO;

@Repository("commentDAO")
public class CommentDAOImpl implements CommentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertComment(CommentVO vo) {
		return mybatis.insert("commentDAO.insertComment", vo);
	}

	public List<Map<String, Object>> selectAllComment(Integer review_id) {
	      return mybatis.selectList("commentDAO.selectAllComment", review_id);
	   }
 
	@Override
	public int deleteComment(Integer comment_id) {
		return mybatis.delete("commentDAO.deleteComment", comment_id);
	}

	@Override
	public void updateComment(CommentVO vo) {
		mybatis.update("commentDAO.updateComment", vo);
	}
	
}

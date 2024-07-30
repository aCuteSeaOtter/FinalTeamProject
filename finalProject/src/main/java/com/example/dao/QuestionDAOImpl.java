package com.example.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.QuestionVO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 문의글 작성
	public void insertQuestion(QuestionVO vo) {
		mybatis.insert("QuestionDAO.insertQuestion", vo);
	}
}

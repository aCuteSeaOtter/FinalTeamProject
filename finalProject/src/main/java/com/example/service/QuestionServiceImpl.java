package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.QuestionDAO;
import com.example.domain.QuestionVO;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	private QuestionDAO questionDAO;
	
	// 문의글 작성
	public void insertQuestion(QuestionVO vo) {
		questionDAO.insertQuestion(vo);
	}
}

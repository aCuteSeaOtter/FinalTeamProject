package com.example.dao;

import com.example.domain.QuestionVO;

public interface QuestionDAO {
	
	// 문의사항 작성
	public void insertQuestion(QuestionVO vo);
}

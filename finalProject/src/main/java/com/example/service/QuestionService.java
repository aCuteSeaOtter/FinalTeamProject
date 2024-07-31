package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.QuestionVO;

public interface QuestionService {
	
	// 문의글 작성
	void insertQuestion(QuestionVO vo);
	
	// 문의글 목록보기
	List<QuestionVO> questionList(HashMap<String, Object> map);
	
	// 문의글 수정
	void updateQuestion(QuestionVO vo);
		
	// 문의글 삭제
	void deleteQuestion(QuestionVO vo);
	
	// 문의글 상세 조회
	QuestionVO selectQuestion(QuestionVO vo);
	
	// 답변 시 Y 반환
	void updateQuestionStatus(QuestionVO vo);
	
	// 삭제 시 N 반환
	void updateQuestionStatusToN(QuestionVO vo);
}

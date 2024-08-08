package com.example.dao;

import java.util.HashMap;
import java.util.List;

import com.example.domain.QuestionVO;

public interface QuestionDAO {
	
	// 문의사항 작성
	public void insertQuestion(QuestionVO vo);
	
	// 문의사항 목록보기
	public List<QuestionVO> questionList(HashMap<String, Object>map);
	
	// 사용자 문의사항 수정
	public void updateQuestion(QuestionVO vo);
		
	// 사용자 문의사항 삭제
	public void deleteQuestion(QuestionVO vo);
	
	// 사용자 문의사항 상세보기
	public HashMap<String, Object> selectQuestion (QuestionVO vo);
	
	// 답변 시 Y 변환
	public void updateQuestionStatus(QuestionVO vo);
		
	// 답변 삭제 시 N 변환
	void updateQuestionStatusToN(QuestionVO vo);
	
	// 사용자 비밀글 비밀번호
	String checkSecretPassword(String que_id);
	
	int getTotalCount(HashMap<String, Object> map);
}

package com.example.dao;

import java.util.HashMap;
import java.util.List;

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
	
	// 문의글 목록보기
	public List<QuestionVO> questionList(HashMap<String, Object> map){
		
		List<QuestionVO> list = mybatis.selectList("QuestionDAO.questionList", map);
		return list;
	}
	
	// 사용자 문의글 수정
	public void updateQuestion(QuestionVO vo) {
		mybatis.update("QuestionDAO.updateQuestion", vo);
	}
	
	// 사용자 문의글 삭제
	public void deleteQuestion(QuestionVO vo) {
		mybatis.delete("QuestionDAO.deleteQuestion", vo);
	}
	
	// 사용자 문의글 상세보기
	public HashMap<String, Object> selectQuestion (QuestionVO vo) {
		return mybatis.selectOne("QuestionDAO.selectQuestion", vo);
	}
	
	// 답변 시 Y 반환
		public void updateQuestionStatus(QuestionVO vo) {
		    mybatis.update("QuestionDAO.updateQuestionStatus", vo);
	}
	
	// 답변 삭제 시 N 반환
	public void updateQuestionStatusToN(QuestionVO vo) {
        mybatis.update("QuestionDAO.updateQuestionStatusToN", vo);
    }
	
	// 비밀글 비밀번호 확인
	public String checkSecretPassword(String que_id) {
        return mybatis.selectOne("QuestionDAO.checkSecretPassword", que_id);
	    }
	
	public int getTotalCount(HashMap<String, Object> map) {
        return mybatis.selectOne("QuestionDAO.getTotalCount", map);
    }
}

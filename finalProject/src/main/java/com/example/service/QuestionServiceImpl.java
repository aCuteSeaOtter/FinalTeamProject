package com.example.service;

import java.util.HashMap;
import java.util.List;

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
	
	// 문의글 목록보기
	public List<QuestionVO> questionList(HashMap <String, Object> map){
		return questionDAO.questionList(map);
	}
	
	// 문의글 수정
	public void updateQuestion(QuestionVO vo) {
		questionDAO.updateQuestion(vo);
	}
	
	// 문의글 삭제
	public void deleteQuestion(QuestionVO vo) {
		questionDAO.deleteQuestion(vo);
	}
	
	// 문의글 상세보기
	public HashMap<String, Object> selectQuestion(QuestionVO vo) {
		return questionDAO.selectQuestion(vo);
	}
	
	// 답변 시 Y 반환
	public void updateQuestionStatus(QuestionVO vo) {
        vo.setQue_state("Y");
        questionDAO.updateQuestionStatus(vo);
    }
	
	// 삭제 시 N 반환
	public void updateQuestionStatusToN(QuestionVO vo) {
        questionDAO.updateQuestionStatusToN(vo);
    }
	
	// 문의글 비밀글
	public String checkSecretPassword(String que_id) {
	    return questionDAO.checkSecretPassword(que_id);
	}
	
	// 문의 총 개수 / 페이징용
    public int getTotalCount(HashMap<String, Object> map) {
        return questionDAO.getTotalCount(map);
    }
}

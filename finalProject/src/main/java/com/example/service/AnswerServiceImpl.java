package com.example.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AnswerDAO;
import com.example.domain.AnswerVO;

@Service
public class AnswerServiceImpl implements AnswerService{

	private static final Logger logger = LoggerFactory.getLogger(AnswerServiceImpl.class);
	
	@Autowired
    private AnswerDAO answerDAO;
	
	public AnswerVO selectAnswer(AnswerVO vo) {
        return answerDAO.selectAnswer(vo);
    }
}

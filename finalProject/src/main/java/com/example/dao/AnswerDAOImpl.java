package com.example.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.AnswerVO;

@Repository
public class AnswerDAOImpl implements AnswerDAO{
	
	@Autowired
    private SqlSession mybatis;

    public AnswerVO selectAnswer(AnswerVO vo) {
        return mybatis.selectOne("AnswerDAO.selectAnswer", vo);
    }
}

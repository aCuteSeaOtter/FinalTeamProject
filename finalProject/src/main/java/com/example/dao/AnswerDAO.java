package com.example.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.AnswerVO;

@Mapper
public interface AnswerDAO {

	AnswerVO selectAnswer(AnswerVO vo);
}

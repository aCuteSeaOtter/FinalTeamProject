package com.example.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.ReportVO;

@Repository("ReportDAO")
public class ReportDAOImpl implements ReportDAO{

	// mybatis 객체 자동 주입
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 신고 추가
	public void insertReport(ReportVO vo) {
		mybatis.insert("ReportDAO.insertReport", vo);
	}
} 

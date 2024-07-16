package com.example.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.domain.ReportVO;

@Repository("ReportDAO")
public class ReportDAOImpl implements ReportDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertReport(ReportVO vo) {
		mybatis.insert("ReportDAO.insertReport", vo);
	}
}

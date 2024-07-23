package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReportDAO;
import com.example.domain.ReportVO;

@Service("reportService")
public class ReportServiceImpl implements ReportService{

	@Autowired
	ReportDAO reportDAO;
	
	public void insertReport(ReportVO vo) {
		reportDAO.insertReport(vo);
	}
}

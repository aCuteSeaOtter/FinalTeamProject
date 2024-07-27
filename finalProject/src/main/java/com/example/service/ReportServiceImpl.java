package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReportDAO;
import com.example.domain.ReportVO;

@Service("reportService")
public class ReportServiceImpl implements ReportService{

	// ReportDAO 객체 자동 주입
	@Autowired
	ReportDAO reportDAO;
	
	// 신고 작성
	public void insertReport(ReportVO vo) {
		// ReportDAO의 insertReport 메서드 호출
		reportDAO.insertReport(vo);
	} 
}

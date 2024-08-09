package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MyPageDAO;

//** 
@Service	// Service 호출 
public class MyPageServiceImpl implements MyPageService {
	 
	//**
	@Autowired
	private MyPageDAO myPageDAO;
	
	// 내 정보
	public List<Map<String, Object>> selectMyInfo(String user_id) {
		return myPageDAO.selectMyInfo(user_id);
    }
	
	// 내 정보 수정
	public void modifyMyInfo(String user_id, String pass, String nickname, String birth) {
		myPageDAO.modifyMyInfo(user_id, pass, nickname, birth);
    }
	
	// 나의 일정
	public List<Map<String, Object>> selectPlanList(String user_id) {
		return myPageDAO.selectPlanList(user_id);
    }
	
	// 나의 후기
	public List<Map<String, Object>> selectReviewList(String user_id) {
		return myPageDAO.selectReviewList(user_id);
    }
	
	// 나의 신고
	public List<Map<String, Object>> selectReportList(String user_id) {
		return myPageDAO.selectReportList(user_id);
	}
	
	// 신고한 게시글로 이동
	public int selectReport(int report_id) {
		return myPageDAO.selectReport(report_id);
	}
} 

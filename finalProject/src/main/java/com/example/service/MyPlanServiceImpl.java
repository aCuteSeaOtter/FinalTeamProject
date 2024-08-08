package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MyPlanDAO;
import com.example.dao.MyPageDAO;

//** 
@Service	// Service 호출 
public class MyPlanServiceImpl implements MyPlanService {
	 
	//**
	@Autowired
	private MyPlanDAO myPlanDAO;
	
	public List<Map<String, Object>> selectMyPlan(int info_id) {
		return myPlanDAO.selectMyPlan(info_id);
    }
} 

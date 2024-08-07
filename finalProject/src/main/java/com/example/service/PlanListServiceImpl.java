package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.PlanListDAO;

//** 
@Service	// Service 호출 
public class PlanListServiceImpl implements PlanListService {
	 
	//**
	@Autowired
	private PlanListDAO PlanListDAO;
	
	public List<Map<String, Object>> selectPlanList(String user_id) {
		return PlanListDAO.selectPlanList(user_id);
    }
} 

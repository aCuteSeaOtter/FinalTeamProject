package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.dao.PlanDAO;
import com.example.domain.PlanVO;

//** 
@Service	// Service 호출
public class PlanServiceImpl implements PlanService {
	 
	//**
	@Autowired
	private PlanDAO planDAO;
	
	public List<PlanVO> insertPlan(List<Integer> data) {
		return planDAO.insertPlan(data);
	}
	
	public List<PlanVO> selectAttrList(Model m) {
		return planDAO.selectAttrList(m);
	}
} 

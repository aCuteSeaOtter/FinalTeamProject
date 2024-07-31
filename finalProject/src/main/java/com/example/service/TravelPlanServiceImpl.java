package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.dao.TravelPlanDAO;

//** 
@Service	// Service 호출 
public class TravelPlanServiceImpl implements TravelPlanService {
	 
	//**
	@Autowired
	private TravelPlanDAO travelPlanDAO;
	
	public void insertTravelPlan(String info_id, int attr_id, int plan_day, int plan_seq) {
		travelPlanDAO.insertTravelPlan(info_id, attr_id, plan_day, plan_seq);
    }
	
	public String selectTravelPlan(String info_id, int plan_day) {
    	return travelPlanDAO.selectTravelPlan(info_id, plan_day);
    }
} 

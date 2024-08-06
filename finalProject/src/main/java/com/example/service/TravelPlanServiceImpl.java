package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.TravelPlanDAO;
import com.example.domain.TravelPlanVO;

//** 
@Service	// Service 호출 
public class TravelPlanServiceImpl implements TravelPlanService {
	 
	//**
	@Autowired
	private TravelPlanDAO travelPlanDAO;
	
	public void insertTravelPlan(String info_id, int attr_id, int plan_day, int plan_seq) {
		travelPlanDAO.insertTravelPlan(info_id, attr_id, plan_day, plan_seq);
    }
	
	public List<TravelPlanVO> selectTravelPlan(String info_id, int plan_day) {
    	return travelPlanDAO.selectTravelPlan(info_id, plan_day);
    }
	
	public TravelPlanVO selectTravelPlanById(int plan_id) {
		return travelPlanDAO.selectTravelPlanById(plan_id);
	}
	
	public int countTravelPlans(String info_id, int plan_day) {
		return travelPlanDAO.countTravelPlans(info_id, plan_day);
	}
	
	public void deleteAllTravelPlan(String info_id, int plan_day) {
		travelPlanDAO.deleteAllTravelPlan(info_id, plan_day);
	}
	
	public void deleteTravelPlan(String info_id, int plan_day, int attr_id) {
		travelPlanDAO.deleteTravelPlan(info_id, plan_day, attr_id);
	}
	
	public List<Map<String, Object>> selectedAttrList(int attr_id, int plan_day) {
        return travelPlanDAO.selectedAttrList(attr_id, plan_day);
    }
} 

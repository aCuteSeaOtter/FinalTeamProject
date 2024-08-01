package com.example.service;

import java.util.List;

import org.springframework.ui.Model;

import com.example.domain.PlanVO;
import com.example.domain.TravelPlanVO;
  
public interface TravelPlanService {
	void insertTravelPlan(String info_id, int attr_id, int plan_day, int plan_seq);
	List<TravelPlanVO> selectTravelPlan(String info_id, int plan_day);
	TravelPlanVO selectTravelPlanById(int plan_id);
} 
 
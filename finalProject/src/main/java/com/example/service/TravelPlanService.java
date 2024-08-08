package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.TravelPlanVO;
  
public interface TravelPlanService {
	void insertTravelPlan(String info_id, int attr_id, int plan_day, int plan_seq);
	List<TravelPlanVO> selectTravelPlan(String info_id, int plan_day);
	TravelPlanVO selectTravelPlanById(int plan_id);
	int countTravelPlans(String info_id, int plan_day);
	void deleteAllTravelPlan(String info_id, int plan_day);
	void deleteTravelPlan(String info_id, int plan_day, int attr_id);
	List<Map<String, Object>> selectedAttrList(int attr_id, int plan_day, int info_id);
} 
 
package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.TravelInfoVO;
  
public interface TravelInfoService {
	void insertTravelInfo(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag);
	String selectTravelInfo();
	
	boolean hasTravelInfo(String memberEmail);
    
	public List<TravelInfoVO> getAllTravelInfo();
    TravelInfoVO getTravelInfoById(int infoId);
    
    List<Map<String, Object>> selectPlan(int info_id);
} 
 
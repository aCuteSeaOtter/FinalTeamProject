package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.TravelInfoVO;
  
public interface TravelInfoService {
	void insertTravelInfo(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag);
	
	String selectTravelInfo();
	
	boolean hasTravelInfo(String memberEmail);
    
	public List<TravelInfoVO> getAllTravelInfo(Map<String, Object> params);
	
    TravelInfoVO getTravelInfoById(int infoId);
    
    List<Map<String, Object>> selectPlan(int info_id);
    
    public List<String> calDates(int infoId);
    
    // 페이징
    public int getTotalCount(Map<String, Object> params);
    
    // 스타일 필터링
    List<TravelInfoVO> filterByStyle(Map<String, Object> params);
    
    // 대상 필터링
    List<TravelInfoVO> filterByWho(Map<String, Object> params);

    // 스타일 필터링에 대한 총 항목 수 조회
    int getTotalCountForStyle(String style);

    // 대상 필터링에 대한 총 항목 수 조회
    int getTotalCountForWho(String who);
} 
 
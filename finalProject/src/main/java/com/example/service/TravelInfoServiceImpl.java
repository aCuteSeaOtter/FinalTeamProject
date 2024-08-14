package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.TravelInfoDAO;
import com.example.domain.TravelInfoVO;

//** 
@Service	// Service 호출 
public class TravelInfoServiceImpl implements TravelInfoService {
	 
	@Autowired
	private TravelInfoDAO travelInfoDAO;
    
    public void insertTravelInfo(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag) {
    	travelInfoDAO.insertTravelInfo(member_email, info_name, trip_place, start_date, end_date, who_tag, style_tag);
    }
    
    public String selectTravelInfo() {
    	return travelInfoDAO.selectTravelInfo();
    }
    
    @Override
    public boolean hasTravelInfo(String memberEmail) {
        int result = travelInfoDAO.existsByMemberEmail(memberEmail);
        return result > 0; // 1이면 true, 0이면 false
    }

    public List<TravelInfoVO> getAllTravelInfo(Map<String, Object> params) {
        return travelInfoDAO.getAllTravelInfo(params);
    }
    
    public TravelInfoVO getTravelInfoById(int infoId) {
        return travelInfoDAO.getTravelInfoById(infoId);
    }
    
    // 상세보기
    public List<Map<String, Object>> selectPlan(int info_id) {
		return travelInfoDAO.selectPlan(info_id);
    }
    
    public List<String> calDates(int infoId) {
        return travelInfoDAO.calDates(infoId);
    }
    
    // 페이징
    public int getTotalCount(Map<String, Object> params) {
        return travelInfoDAO.getTotalCount(params);
    }
    
 // 스타일 필터링
    @Override
    public List<TravelInfoVO> filterByStyle(Map<String, Object> params) {
        return travelInfoDAO.filterByStyle(params);
    }

    // 대상 필터링
    @Override
    public List<TravelInfoVO> filterByWho(Map<String, Object> params) {
        return travelInfoDAO.filterByWho(params);
    }

    // 스타일 필터링에 대한 총 항목 수 조회
    @Override
    public int getTotalCountForStyle(String style) {
        return travelInfoDAO.getTotalCountForStyle(style);
    }

    // 대상 필터링에 대한 총 항목 수 조회
    @Override
    public int getTotalCountForWho(String who) {
        return travelInfoDAO.getTotalCountForWho(who);
    }
} 

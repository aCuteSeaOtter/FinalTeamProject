package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.dao.TravelInfoDAO;

//** 
@Service	// Service 호출 
public class TravelInfoServiceImpl implements TravelInfoService {
	 
	@Autowired
	private TravelInfoDAO travelInfoDAO;
    
    public void insertTravelInfo(String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag) {
    	travelInfoDAO.insertTravelInfo(info_name, trip_place, start_date, end_date, who_tag, style_tag);
    }
    
    public String selectTravelInfo() {
    	return travelInfoDAO.selectTravelInfo();
    }
} 

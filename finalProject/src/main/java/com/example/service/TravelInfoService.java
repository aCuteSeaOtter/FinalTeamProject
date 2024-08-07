package com.example.service;

import java.util.List;
import org.springframework.ui.Model;
import com.example.domain.PlanVO;
  
public interface TravelInfoService {
	void insertTravelInfo(String member_email, String info_name, String trip_place, String start_date, String end_date, String who_tag, String style_tag);
	String selectTravelInfo();
	boolean hasTravelInfo(String memberEmail);
} 
 
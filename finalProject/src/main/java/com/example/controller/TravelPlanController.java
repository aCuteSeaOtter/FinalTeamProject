package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.TravelPlanVO;
import com.example.service.TravelPlanService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TravelPlanController {
	
	@Autowired
	private TravelPlanService travelPlanService;
	
	@RequestMapping("/travelPlan")
	public String insertTravelPlan(HttpSession session, @RequestParam("day") int plan_day, @RequestParam(value="data[]") List<Integer> attr_id) {
		String info_id = (String)session.getAttribute("info_id");
		
		for(int i = 0, plan_seq = 1; i < attr_id.size(); i++, plan_seq++) {
			travelPlanService.insertTravelPlan(info_id, attr_id.get(i), plan_day, plan_seq);
		}
		
		String plan_id = travelPlanService.selectTravelPlan(info_id, plan_day);
		
		return plan_id;
	}
} 

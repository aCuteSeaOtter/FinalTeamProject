package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.AttrVO;
import com.example.domain.TravelPlanVO;
import com.example.service.AttrService;
import com.example.service.TravelPlanService;

import jakarta.servlet.http.HttpSession;

@Controller
@RestController
public class TravelPlanController {
	
	@Autowired
	private TravelPlanService travelPlanService;
	
	@Autowired
	private AttrService attrService;
	
	@PostMapping("/travelPlan")
	public List<AttrVO> insertTravelPlan(HttpSession session, @RequestParam("day") int plan_day, @RequestParam(value="data[]") List<Integer> attr_id) {
		String info_id = (String)session.getAttribute("info_id");
		
		for(int i = 0, plan_seq = 1; i < attr_id.size(); i++, plan_seq++) {
			travelPlanService.insertTravelPlan(info_id, attr_id.get(i), plan_day, plan_seq);
		}
		
		List<TravelPlanVO> plans = travelPlanService.selectTravelPlan(info_id, plan_day);
		
		// plan_id만 추출하여 리스트로 반환
		List<Integer> plan_id = plans.stream()
                .map(TravelPlanVO::getPlan_id)
                .collect(Collectors.toList());
		
		
		List<TravelPlanVO> detailedPlan = new ArrayList<>();
		List<AttrVO> detailedAttr = new ArrayList<>();
		
		for(Integer id : plan_id) {
			TravelPlanVO plan = travelPlanService.selectTravelPlanById(id);
			
			AttrVO attr = attrService.selectAttrListById(plan.getAttr_id());
			
			detailedAttr.add(attr);
		}
		System.out.println("테스트 : " + detailedAttr);
		
		 
		
		return detailedAttr;
	}
} 

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
	
	// plan/plan 페이지에서 일정 등록
	@PostMapping("/travelPlan")
	public List<AttrVO> insertTravelPlan(HttpSession session, @RequestParam("day") int plan_day, @RequestParam(value="data[]") List<Integer> attr_id) {
		String info_id = (String)session.getAttribute("info_id");
		
		// 명소의 수 만큼 데이터 저장
		for (int i = 0; i < attr_id.size(); i++) {
	        int plan_seq = getNextPlanSeq(info_id, plan_day); // Calculate the next sequence value
	        travelPlanService.insertTravelPlan(info_id, attr_id.get(i), plan_day, plan_seq);
	    }
		
		// plan/plan 페이지에 자신이 등록한 일정을 날짜에 맞게 가져오기
		List<TravelPlanVO> plans = travelPlanService.selectTravelPlan(info_id, plan_day);
		
		// plan_id만 추출하여 리스트로 반환
		List<Integer> plan_id = plans.stream()
                .map(TravelPlanVO::getPlan_id)
                .collect(Collectors.toList());
		
		List<AttrVO> detailedAttr = new ArrayList<>();
		
		for(Integer id : plan_id) {
			// plan_id로 plan을 가져옴
			TravelPlanVO plan = travelPlanService.selectTravelPlanById(id);
			
			// plan의 attr_id로 attr을 가져옴
			if (plan != null) {
	            AttrVO attr = attrService.selectAttrListById(plan.getAttr_id());
	            

	            // attr을 리스트로 반환
	            if (attr != null) {
	                detailedAttr.add(attr);
	            }
	        }
		}
		 
		
		return detailedAttr;
	}
	
	// popup 모든 항목 삭제
	@PostMapping("/deleteAllTravelPlan")
	public String deleteAllTravelPlan(HttpSession session, @RequestParam("day") int plan_day) {
		String info_id = (String)session.getAttribute("info_id");
		
        travelPlanService.deleteAllTravelPlan(info_id, plan_day);
        
        return "완료";
	}
	
	// popup 항목 삭제
	@PostMapping("/deleteTravelPlan")
	public String deleteTravelPlan(HttpSession session, @RequestParam("day") int plan_day, @RequestParam("attr_id") int attr_id) {
		String info_id = (String)session.getAttribute("info_id");
		
        travelPlanService.deleteTravelPlan(info_id, plan_day, attr_id);
        System.out.println("개인 항목 삭제");
        
        return "완료";
	}
	
	
	private int getNextPlanSeq(String info_id, int plan_day) {
	    // Fetch the count of existing plans with the same info_id and plan_day
	    int existingPlansCount = travelPlanService.countTravelPlans(info_id, plan_day);
	    return existingPlansCount + 1; // Return next sequence value
	}
} 

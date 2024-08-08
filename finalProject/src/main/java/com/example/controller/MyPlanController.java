package com.example.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.service.MyPlanService;

@Controller
public class MyPlanController {
	
	@Autowired
	private MyPlanService myPlanService;
	
	@PostMapping("/selectMyPlan")
	public String selectMyPlan(@RequestParam("info_id") int info_id, RedirectAttributes r) {
		List<Map<String, Object>> result = myPlanService.selectMyPlan(info_id);
		
		// plan_day 값을 추출하되, null 체크를 포함합니다.
		List<Integer> planDays = result.stream()
			    .map(map -> {Object planDay = map.get("PLAN_DAY");
			        return ((BigDecimal) planDay).intValue();
			    })
			    .filter(Objects::nonNull)
			    .distinct()
			    .sorted()
			    .collect(Collectors.toList());
		
		// plan_day로 그룹화
	    Map<Integer, List<Map<String, Object>>> groupedPlans = result.stream()
	        .collect(Collectors.groupingBy(
	            map -> ((BigDecimal) map.get("PLAN_DAY")).intValue(),
	            Collectors.toList()
	        ));
	    
	    // 결과를 정렬된 형태로 변환합니다.
	    List<Map<String, Object>> organizedPlans = planDays.stream()
	        .map(day -> {
	            Map<String, Object> dayPlan = new HashMap<>();
	            dayPlan.put("plan_day", day);
	            dayPlan.put("attr_name", groupedPlans.get(day));
	            return dayPlan;
	        })
	        .collect(Collectors.toList());
		
		r.addFlashAttribute("myPlan", organizedPlans);
		
		return "redirect:plan/myPlan";
	}
	
	@RequestMapping("/plan/myPlan")
	public String myPlan() {
		
		return "plan/myPlan";
	}
} 

package com.example.controller;

import java.util.List;
import java.util.Map;

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
		
		
		
		
		r.addFlashAttribute("myPlan", result);
		System.out.println(result);
		return "redirect:plan/myPlan";
	}
	
	@RequestMapping("/plan/myPlan")
	public String myPlan() {
		
		return "plan/myPlan";
	}
} 

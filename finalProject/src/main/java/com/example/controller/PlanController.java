package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.PlanVO;
import com.example.service.PlanService;

@Controller
@RequestMapping("/plan")
public class PlanController {
	
	@Autowired
	private PlanService planService;
	 
	@RequestMapping("/addAttr")
	public List<PlanVO> addAttr(Model m) {
		List<PlanVO> result = planService.addAttr(m);
		m.addAttribute("attr", result);
		return result;
	}
	
	@RequestMapping("/planPopup")
	public String popup() {
		return "plan/planPopup";
	}
	
	@RequestMapping("/plan")
	public String search() {
		return "plan/plan";
	}
} 

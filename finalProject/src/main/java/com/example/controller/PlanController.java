package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.PlanVO;
import com.example.service.PlanService;

@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	 
	
	@PostMapping("/insertPlan")
	@ResponseBody
	public List<PlanVO> insertPlan(@RequestBody List<PlanVO> selectedAttrIdData) {
		System.out.println("앙" + selectedAttrIdData);
		List<PlanVO> result = planService.insertPlan(selectedAttrIdData);
		return result;
	}
	
	
	@RequestMapping("/plan/planPopup")
	public List<PlanVO> selectAttrList(Model m) {
		System.out.println("급똥신호옴");
		List<PlanVO> result = planService.selectAttrList(m);
		m.addAttribute("attrList", result);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	 * @RequestMapping("/planPopup") public String popup(Model m) { return
	 * "plan/planPopup"; }
	 */
	
	@RequestMapping("/plan/plan")
	public String search() {
		return "plan/plan";
	}
} 

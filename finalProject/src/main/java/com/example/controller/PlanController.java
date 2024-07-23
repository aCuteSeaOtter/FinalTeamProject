package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.example.domain.PlanVO;
import com.example.service.PlanService;
import lombok.NoArgsConstructor;

@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	 
	
	@PostMapping("/insertPlan")
	@ResponseBody
	public List<PlanVO> insertPlan(@RequestParam(value="data[]") List<Integer> data, Model m) {
		System.out.println("insertPlan 신호");
		List<PlanVO> result = planService.insertPlan(data);
		System.out.println(result);
		m.addAttribute("selList", data);
		return result;
	}
	
	
	@RequestMapping("/plan/planPopup")
	public List<PlanVO> selectAttrList(Model m) {
		System.out.println("planPopup 신호");
		List<PlanVO> result = planService.selectAttrList(m);
		m.addAttribute("attrList", result);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("plan")
	public String sendDates(@RequestParam("dates") List<String> dates) {
		System.out.println(dates);
		return "redirect:/plan/plan";
	}
	
	
	@RequestMapping("plan/plan")
	public String search() {
		return "plan/plan";
	}
} 

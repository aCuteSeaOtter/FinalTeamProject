package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.PlanVO;
import com.example.service.PlanService;

@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	 
	
	// 선택한 장소의 id값 가져오기
	@PostMapping("/insertPlan")
	@ResponseBody
	public List<PlanVO> insertPlan(@RequestParam(value="data[]") List<Integer> data) {
		System.out.println("insertPlan 신호");
		List<PlanVO> result = planService.insertPlan(data);
		System.out.println(result);
		return result;
	}
	
	// planPopup에 장소목록 출력
	@RequestMapping("/plan/planPopup")
	public List<PlanVO> selectAttrList(Model m) {
		System.out.println("planPopup 신호");
		List<PlanVO> result = planService.selectAttrList(m);
		m.addAttribute("attrList", result);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// calendar -> plan 이동
	@GetMapping("/calendar/plan")
	public String sendDates(@RequestParam("day6") String akak, List<String> dates, Model m) {
		System.out.println(dates);
		m.addAttribute("dates", dates);
		System.out.println(m.addAttribute("dates", dates));
		return "redirect:/plan/plan";
	}
	
	// plan 이동
	@RequestMapping("plan/plan")
	public String plan() {
		return "plan/plan";
	}
} 

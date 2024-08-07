package com.example.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LoginVO;
import com.example.service.PlanListService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PlanListController {
	
	@Autowired
	private PlanListService planListService;
	
	
	@RequestMapping("/plan/planList")
	public String planList(Model m, HttpSession session) {
		LoginVO member = (LoginVO)session.getAttribute("member");
		if(member == null) {
			return "redirect:/login/loginForm";
		}
		String user_id = member.getMember_email();
		
		List<Map<String, Object>> result = planListService.selectPlanList(user_id);
		
		m.addAttribute("planList", result);
		
		return "plan/planList";
	}
} 

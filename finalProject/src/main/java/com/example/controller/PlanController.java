package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.SearchService;

@Controller
@RequestMapping("/plan")
public class PlanController {
	
	
	
	@RequestMapping("/plan")
	public String search() {
		return "plan/plan";
	}
} 

package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.AttrVO;
import com.example.service.AttrService;

@Controller
public class AttrController {
	
	@Autowired
	private AttrService attrService;
	
	// plan/planPopup에 모든 명소 불러오기
	@RequestMapping("/plan/planPopup")
	public String attr(Model m) {
		List<AttrVO> result = attrService.selectAttrList();
		
		m.addAttribute("attrList", result);
		
		return "/plan/planPopup";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	@PostMapping("/travelPlan")
    @ResponseBody
    public List<AttrVO> insertPlan(@RequestParam("day") int day, @RequestParam(value="data[]") List<Integer> data) {
        List<AttrVO> result = attrService.insertPlan(day, data);
        System.out.println(result);
        return result;
    }*/
} 

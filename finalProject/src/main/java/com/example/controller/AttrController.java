package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.AttrVO;
import com.example.service.AttrService;

@Controller
public class AttrController {
	
	@Autowired
	private AttrService attrService;
	
	@PostMapping("/selectInfo")
	@ResponseBody
	public List<AttrVO> attrInfo(Model m, @RequestParam("id") int attr_id) {
		List<AttrVO> list = attrService.selectAttrInfo(attr_id);
		System.out.println(list);
		
		return list;
	}
	
	@RequestMapping("/plan/planPopup")
	public String attr() {
		return "plan/planPopup";
	}
} 

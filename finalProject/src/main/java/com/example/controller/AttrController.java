package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.AttrVO;
import com.example.service.AttrService;

@Controller
public class AttrController {
	
	@Autowired
	private AttrService attrService;
	
	/*
	// plan/planPopup에 모든 명소 불러오기
	@RequestMapping("/plan/planPopup")
	public String attr(Model m, @RequestParam("selectedAttrIds") List<Integer> selectedAttrIds) {
		// 결과 리스트를 별도로 준비
	    List<AttrVO> selectedAttrList = new ArrayList<>();
	    List<AttrVO> defaultAttrList = new ArrayList<>();

	    if (selectedAttrIds != null && !selectedAttrIds.isEmpty()) {
	        // selectedAttrIds가 비어있지 않은 경우 (기존에 선택한 명소가 있을 경우)
	        for (Integer id : selectedAttrIds) {
	            List<AttrVO> attrList = attrService.selectAttrList(id);
	            if (attrList != null) {
	                selectedAttrList.addAll(attrList); // 선택된 ID들에 대한 결과를 통합
	            }
	        }
	    }

	    // 기본 조회 결과를 추가
	    List<AttrVO> defaultAttrs = attrService.selectAttrList();
	    if (defaultAttrs != null) {
	        defaultAttrList.addAll(defaultAttrs);
	    }

	    // 모델에 결과 추가
	    m.addAttribute("cnt", selectedAttrList.size());
	    m.addAttribute("selectedAttrList", selectedAttrList);
	    m.addAttribute("attrList", defaultAttrList);
		
		
		
		
		
		return "/plan/planPopup";
	}*/
	
	@RequestMapping("/plan/planPopup")
	public String attr() {
		return "plan/planPopup";
	}
} 

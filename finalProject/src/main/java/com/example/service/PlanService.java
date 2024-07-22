package com.example.service;

import java.util.List;

import org.springframework.ui.Model;

import com.example.domain.PlanVO;
 
public interface PlanService {
	List<PlanVO> insertPlan(List<PlanVO> selectedAttrIdData);
	List<PlanVO> selectAttrList(Model m);
} 

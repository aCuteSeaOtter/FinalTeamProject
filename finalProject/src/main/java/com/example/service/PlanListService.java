package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.LoginVO;
  
public interface PlanListService {
	List<Map<String, Object>> selectPlanList(String user_id);
} 
 
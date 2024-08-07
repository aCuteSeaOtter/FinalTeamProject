package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.LoginVO;
  
public interface MyPlanService {
	List<Map<String, Object>> selectMyPlan(int info_id);
} 
 
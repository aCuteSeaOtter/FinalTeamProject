package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.AttrVO;
import com.example.domain.WeatherVO;
  
public interface WeatherService {
	List<Map<String, Object>> weather(String date, String local);
} 
 
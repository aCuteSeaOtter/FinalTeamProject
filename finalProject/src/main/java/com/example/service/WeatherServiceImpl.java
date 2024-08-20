package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.WeatherDAO;
import com.example.domain.WeatherVO;

//** 
@Service	// Service 호출 
public class WeatherServiceImpl implements WeatherService {
	 
	//**
	@Autowired
	private WeatherDAO weatherDAO;
	
    public List<Map<String, Object>> weather(String date, String local) {
        return weatherDAO.weather(date, local);
    }
} 

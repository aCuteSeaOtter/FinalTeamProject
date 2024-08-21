package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.LoginVO;
import com.example.service.WeatherService;

import jakarta.servlet.http.HttpSession;

@RestController
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	@PostMapping("/weather")
	@ResponseBody
	public List<Map<String, Object>> weather(HttpSession session, @RequestParam("date") List<String> date) {
		System.out.println(date);
		String local = (String)session.getAttribute("local");
		
		List<String> formattedDates = new ArrayList<>();

		for(int i = 0; i < date.size(); i++) {
		    String formattedDate = date.get(i).split(" ")[0];
		    formattedDates.add(formattedDate);  // 모든 날짜를 리스트에 추가
		}

		System.out.println(formattedDates);  // 모든 formattedDate를 출력
		
		List<Map<String, Object>> vo = new ArrayList<>();

		for(int i = 0; i < formattedDates.size(); i++) {
		    List<Map<String, Object>> result = weatherService.weather(formattedDates.get(i), local);
		    vo.addAll(result);  // 각 결과를 vo 리스트에 추가
		}
		System.out.println(vo);

		return vo;
	}
} 

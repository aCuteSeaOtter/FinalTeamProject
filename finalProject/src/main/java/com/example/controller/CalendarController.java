package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller 
public class CalendarController {
	
	
	
	
	
	
	
	// 세션에서 로그인 정보 받아오기
	@RequestMapping("calendar/calendar")
	public String sessionData(HttpSession session) throws Exception {
		session.setAttribute("local", "지역");	// 로그인 구현되면 지우기
		String local = (String) session.getAttribute("local");	// 세션에 저장된 변수명
		
		
		System.out.println("세션(지역) : " + local);
		
		return "calendar/calendar";
	}
}

package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller 
public class CalendarController {
	
	
	// 세션에서 로그인 정보 받아오기
	@RequestMapping("/calendar/calendar")
	public String sessionData(@RequestParam("local") String local, HttpSession session) throws Exception {
		session.setAttribute("local", local);
		
		return "calendar/calendar";
	}
}

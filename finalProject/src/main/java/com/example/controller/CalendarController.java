package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	
	
	
	
	 
	@RequestMapping("calendar/calendar")
	public String calendar() {
		return "calendar/calendar";
	}
}

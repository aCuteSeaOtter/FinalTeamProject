package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("calendar")
public class CalendarController {
	static final Logger logger = LoggerFactory.getLogger(CalendarController.class);
	
	@RequestMapping("/{step}")
	// @PathVariable : 경로변수
	public String viewPage(@PathVariable String step) {
		logger.info(step + "경로 들어옴");
		return step;
	}
	
	@RequestMapping("/calendar")
	public String calendar() {
		return "calendar/calendar";
	}
}

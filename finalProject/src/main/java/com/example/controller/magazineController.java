package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/magazine")
public class magazineController {

	@Autowired
	/* private MagazineService magazineService; */
	
	@RequestMapping("/magazineList")
	public void magazineList() {
		
	}
}

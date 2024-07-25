package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.SearchService;

@Controller
@RequestMapping("/searchTest")
public class SearchController {
	  
	@Autowired 
	private SearchService searchService;
	
	@RequestMapping("/searchData")
	public String searchData(String keyword) {
		String result = searchService.searchData(keyword);
		System.out.println(result);
		return "redirect:index";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "searchTest/search";
	}
} 

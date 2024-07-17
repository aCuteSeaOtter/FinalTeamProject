package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.SearchDAO;

//**
@Service	// Service 호출
public class SearchServiceImpl implements SearchService {
	
	//**
	@Autowired
	private SearchDAO searchDAO;
	
	public String searchData(String keyword) {
		return searchDAO.searchData(keyword);
	}
}

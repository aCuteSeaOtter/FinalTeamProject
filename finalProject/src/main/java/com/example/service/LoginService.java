package com.example.service;

import java.util.HashMap;

import com.example.domain.LoginVO;
import com.fasterxml.jackson.core.JsonProcessingException;

import jakarta.servlet.http.HttpSession;


public interface LoginService {

	void registForm(LoginVO LoginVO);
	//MemberVO loginForm(MemberVO memberVO);  
	void updateForm(LoginVO LoginVO);
	void deleteForm(LoginVO LoginVO);

	void insertkakao(LoginVO LoginVO);
	
	LoginVO checkLogin(LoginVO LoginVO);
	void savecontact(LoginVO LoginVO);
	//String getAccessToken(String code);
	//HashMap<String,Object>getUserInfo(String accessToken);
	//void kakaoLogout(String accessToken); 
	
	
	}
   
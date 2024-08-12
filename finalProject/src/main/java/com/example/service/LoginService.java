package com.example.service;


import com.example.domain.LoginVO;



public interface LoginService {

	void registForm(LoginVO LoginVO);
	//MemberVO loginForm(MemberVO memberVO);  
	//boolean authenticate(String member_email, String member_pass);

	void insertkakao(LoginVO LoginVO);
	
	LoginVO checkLogin(LoginVO LoginVO);
	void savecontact(LoginVO LoginVO);
	//String getAccessToken(String code);
	//HashMap<String,Object>getUserInfo(String accessToken);
	//void kakaoLogout(String accessToken); 
	
	
	}
   
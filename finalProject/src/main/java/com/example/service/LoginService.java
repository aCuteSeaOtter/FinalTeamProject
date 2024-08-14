package com.example.service;



import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.LoginVO;

import jakarta.servlet.http.HttpSession;


public interface LoginService {

	void registForm(LoginVO LoginVO);
	//MemberVO loginForm(MemberVO memberVO);  

	//void insertkakao(LoginVO LoginVO);

	//LoginVO findkakao(String member_email, String member_nickname, String member_pass);
	//boolean updateRandom(String email,String randomNum);
	//boolean processRandomNumber(String email, int num);
	LoginVO checkLogin(LoginVO LoginVO);
	void savecontact(LoginVO LoginVO);
	//String getAccessToken(String code);
	//HashMap<String,Object>getUserInfo(String accessToken);
	//void kakaoLogout(String accessToken); 
	//LoginVO getUserInfo(String accessToken, HttpSession session, RedirectAttributes rttr);
	
	}
   
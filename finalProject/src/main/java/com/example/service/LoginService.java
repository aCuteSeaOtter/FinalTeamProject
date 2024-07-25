package com.example.service;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.LoginVO;

import jakarta.servlet.http.HttpSession;

public interface LoginService { 

	void registForm(LoginVO LoginVO);
	//MemberVO loginForm(MemberVO memberVO);
	void updateForm(LoginVO LoginVO);
	void deleteForm(LoginVO LoginVO);

	void insertkakao(LoginVO LoginVO);
	
	LoginVO findkakao(String memberEmail, String memberPass, String memberNickname);
	LoginVO checkLogin(LoginVO LoginVO);
	void savecontact(LoginVO LoginVO);

	//카카오 API를 통한 회원정보저장
	void saveKakaoMember(String email, String nickname);
	
	
	String getAccessToken(String code);
	String getUserInfo(String accessToken, HttpSession session, RedirectAttributes rttr);

	
//	void memberuser(String member_email, String member_pass);
	
	
}
  
package com.example.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.query.Param;

import com.example.domain.LoginVO;

@Mapper
public interface LoginDAO { 

	public 	void registForm(LoginVO loginVO);
	//public MemberVO loginForm(MemberVO memberVO);
	public	void updateForm(LoginVO loginVO);
	public 	void deleteForm(LoginVO loginVO);
	

	public LoginVO checkLogin(LoginVO loginVO);
	 
	
	// 이미 가입된 회원인지 확인하는 메소드
	public LoginVO findkakao(@Param("memberEmail") String memberEmail,
            @Param("memberPass") String memberPass,
            @Param("memberNickname") String memberNickname);

	//카카오 로그인 회원정보 저장
	void kakaoinsert(HashMap<String, Object>userInfo);
	
	void saveKakaoMember(String email, String nickname);
}
  
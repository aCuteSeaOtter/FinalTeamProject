package com.example.service;

import java.util.List;

import com.example.domain.UserVO;

public interface UserService {
	
	List<UserVO> getMemberList(UserVO vo);
	
	void insertMember(UserVO vo);
	
	UserVO getMember(UserVO vo);
	
	void updateMember(UserVO vo);
	
	void deleteMember(UserVO vo);
	
	UserVO checkLogin(UserVO vo);
	
	UserVO logout(UserVO vo);
}

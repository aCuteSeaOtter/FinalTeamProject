package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.domain.UserVO;

//**
@Service
public class UserServiceImpl implements UserService {
	
	//**
	@Autowired
	private UserDAO memberDAO;


	public List<UserVO>getMemberList(UserVO vo) {
		return memberDAO.getMemberList(vo);
	}
	
	public void insertMember(UserVO vo) {
		
		memberDAO.insertMember(vo);
	}
	
	public UserVO getMember(UserVO vo) {
		return memberDAO.getMember(vo);
	}
	
	public void updateMember(UserVO vo) {
		
		memberDAO.updateMember(vo);
	}
	
	public void deleteMember(UserVO vo) {
		
		memberDAO.deleteMember(vo);
	}
	
	public UserVO checkLogin(UserVO vo) {
		
		UserVO result = memberDAO.checkLogin(vo);
		System.out.println("서비스단 결과: " + result);
		return result;
	}
	
	public UserVO logout(UserVO vo) {
        return memberDAO.logout(vo);
	}
}

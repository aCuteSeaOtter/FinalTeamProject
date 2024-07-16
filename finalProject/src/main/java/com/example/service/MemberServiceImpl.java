package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MemberDAO;
import com.example.domain.MemberVO;

//**
@Service
public class MemberServiceImpl implements MemberService {
	
	//**
	@Autowired
	private MemberDAO memberDAO;


	public List<MemberVO>getMemberList(MemberVO vo) {
		return memberDAO.getMemberList(vo);
	}
	
	public void insertMember(MemberVO vo) {
		
		memberDAO.insertMember(vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}
	
	public void updateMember(MemberVO vo) {
		
		memberDAO.updateMember(vo);
	}
	
	public void deleteMember(MemberVO vo) {
		
		memberDAO.deleteMember(vo);
	}
	
	public MemberVO checkLogin(MemberVO vo) {
		
		MemberVO result = memberDAO.checkLogin(vo);
		System.out.println("서비스단 결과: " + result);
		return result;
	}
	
	public MemberVO logout(MemberVO vo) {
        return memberDAO.logout(vo);
	}
}

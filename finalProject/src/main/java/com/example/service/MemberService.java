package com.example.service;

import java.util.List;

import com.example.domain.MemberVO;

public interface MemberService {
	
	List<MemberVO> getMemberList(MemberVO vo);
	
	void insertMember(MemberVO vo);
	
	MemberVO getMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	void deleteMember(MemberVO vo);
	
	MemberVO checkLogin(MemberVO vo);
	
	MemberVO logout(MemberVO vo);
}

package com.example.service;

import com.example.domain.MemberVO;

public interface MemberService {

	void registForm(MemberVO member2VO);
	MemberVO loginForm(MemberVO member2VO);
	void updateForm(MemberVO member2VO);
	void deleteForm(MemberVO member2VO);

	MemberVO savecontact(MemberVO member2VO);
}
 
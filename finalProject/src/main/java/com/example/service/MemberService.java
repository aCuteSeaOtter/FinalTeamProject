package com.example.service;

import com.example.domain.Member2VO;

public interface MemberService {

	void registForm(Member2VO member2VO);
	Member2VO loginForm(Member2VO member2VO);
	void updateForm(Member2VO member2VO);
	void deleteForm(Member2VO member2VO);

	Member2VO savecontact(Member2VO member2VO);
}
 
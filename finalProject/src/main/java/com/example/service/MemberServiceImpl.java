package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.Member2DAO;
import com.example.domain.Member2VO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private Member2DAO	member2DAO;
	
	
	
	 
	@Override
	@Transactional
	public void registForm(Member2VO member2vo) {
		member2DAO.registForm(member2vo);
		 
	}

	@Override
	public void updateForm(Member2VO member2vo) {
		
		 
	}

	@Override
	public void deleteForm(Member2VO member2vo) {
	
		
	}

	@Override
	public Member2VO loginForm(Member2VO member2vo) {
		return member2DAO.loginForm(member2vo);
	}

	@Override
	public Member2VO savecontact(Member2VO member2vo) {
	
 		Member2VO result = member2DAO.loginForm(member2vo);
		System.out.println("결과"+result);
		return result;
	}

}

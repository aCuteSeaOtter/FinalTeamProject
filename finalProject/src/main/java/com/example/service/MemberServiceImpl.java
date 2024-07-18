package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.MemberDAO;
import com.example.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO	member2DAO;
	
	
	
	 
	@Override
	@Transactional
	public void registForm(MemberVO member2vo) {
		member2DAO.registForm(member2vo);
		 
	}

	@Override
	public void updateForm(MemberVO member2vo) {
		
		 
	}

	@Override
	public void deleteForm(MemberVO member2vo) {
	
		
	}

	@Override
	public MemberVO loginForm(MemberVO member2vo) {
		return member2DAO.loginForm(member2vo);
	}

	@Override
	public MemberVO savecontact(MemberVO member2vo) {
	
 		MemberVO result = member2DAO.loginForm(member2vo);
		System.out.println("결과"+result);
		return result;
	}

}

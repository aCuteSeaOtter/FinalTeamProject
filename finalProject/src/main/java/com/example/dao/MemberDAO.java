package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.MemberVO;


/* 
  	DAO와 Mapper 연결
 	1. mapper에서
		<mapper namespace="com.example.dao.BoardDAO">

	2. DAO 클래스에서
		함수명과 mapper에서의 ID값 동일
*/
@Mapper
public interface MemberDAO {
	
	public List<MemberVO> getMemberList(MemberVO vo) ;
	
	public void insertMember(MemberVO vo);
	
	public MemberVO getMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
	
	public MemberVO checkLogin(MemberVO vo);

	public MemberVO logout(MemberVO vo);
	
}

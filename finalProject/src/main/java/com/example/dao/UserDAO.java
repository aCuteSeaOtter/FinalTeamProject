package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.UserVO;

@Mapper
public interface UserDAO {
	
	public List<UserVO> getMemberList(UserVO vo) ;
	
	public void insertMember(UserVO vo);
	
	public UserVO getMember(UserVO vo);
	
	public void updateMember(UserVO vo);
	
	public void deleteMember(UserVO vo);
	
	public UserVO checkLogin(UserVO vo);

	public UserVO logout(UserVO vo);
	
}

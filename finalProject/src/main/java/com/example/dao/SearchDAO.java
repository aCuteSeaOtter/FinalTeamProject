package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

/** 
 DAO와 Mapper 연결
 	[1] Mapper에서
 		<mapper namespace="com.example.dao.BoardDAO">
 	  
 	[2] DAO 클래스에서
 		함수명과 Mapper에서의 ID값 동일해야함
*/
@Mapper		// Mapper 호출
public interface SearchDAO {
	public String searchData(String keyword);
}

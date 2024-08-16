package com.example.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.example.domain.AttrVO;

/**  
 DAO와 Mapper 연결
 	[1] Mapper에서
 		<mapper namespace="com.example.dao.BoardDAO">
 	 
 	[2] DAO 클래스에서
 		함수명과 Mapper에서의 ID값 동일해야함
*/
@Mapper		// Mapper 호출 
public interface AttrDAO {
	// 기본 명소 출력
	public List<AttrVO> selectAttrList(String local);
	// id를 이용한 명소 출력
	public List<AttrVO> selectAttrList(int selectedAttrIds);
	// id를 이용한 명소 출력
	public List<AttrVO> editAttrList(String trip_place);
	// 검색어를 이용한 명소 검색
	List<AttrVO> searchAttrByKeyword(String keyword);
	
	public List<Map<String, Object>> selectAttrListById(Integer id,  Integer info_id);
	
	public List<AttrVO> selectAttrInfo(int attr_id);
}

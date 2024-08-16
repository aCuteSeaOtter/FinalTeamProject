package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.AttrVO;
  
public interface AttrService {
	List<AttrVO> selectAttrList(String local);
	
	List<AttrVO> selectAttrList(int selectedAttrIds);
	
	List<AttrVO> editAttrList(String trip_place);
	
	List<Map<String, Object>> selectAttrListById(Integer id, Integer info_id);
	
	List<AttrVO> searchAttrByKeyword(String keyword);
	
	List<AttrVO> selectAttrInfo(int attr_id);
} 
 
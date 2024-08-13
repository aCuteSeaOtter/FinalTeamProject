package com.example.service;

import java.util.List;
import com.example.domain.AttrVO;
  
public interface AttrService {
	List<AttrVO> selectAttrList(String local);
	
	List<AttrVO> selectAttrList(int selectedAttrIds);
	
	List<AttrVO> editAttrList(String trip_place);
	
	AttrVO selectAttrListById(Integer id);
	
	List<AttrVO> searchAttrByKeyword(String keyword);
	
	List<AttrVO> selectAttrInfo(int attr_id);
} 
 
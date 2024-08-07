package com.example.service;

import java.util.List;
import com.example.domain.AttrVO;
  
public interface AttrService {
	List<AttrVO> selectAttrList();
	
	List<AttrVO> selectAttrList(int selectedAttrIds);
	
	AttrVO selectAttrListById(Integer id);
	
	List<AttrVO> searchAttrByKeyword(String keyword);
	
	List<AttrVO> selectAttrInfo(int attr_id);
} 
 
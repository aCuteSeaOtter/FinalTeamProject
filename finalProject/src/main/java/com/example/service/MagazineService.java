package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.MagazineVO;
  
public interface MagazineService {
	
	List<MagazineVO> getMagazineList(HashMap<String, Object> map, int page, int pageSize);
	
	public List<MagazineVO> findMagazinesByArea(HashMap<String, Object> map);
	
	public List<MagazineVO> findMagazinesByTag(HashMap<String, Object> map);
	
	// 페이징용
	int getTotalCount(HashMap<String, Object> map);
	
	int getTotalCountForArea(String area);
	
	int getTotalCountForTag(String tag);
	
	
	
	

} 
 
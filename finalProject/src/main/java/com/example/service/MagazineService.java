package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.MagazineVO;
  
public interface MagazineService {
	
	List<MagazineVO> getMagazineList(HashMap<String, Object> map, int page, int pageSize);
	
	// 페이징용
	int getTotalCount(HashMap<String, Object> map);

} 
 
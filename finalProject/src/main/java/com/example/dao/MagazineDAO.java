package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.MagazineVO;


@Mapper 
public interface MagazineDAO {
	// 기본 명소 출력
	public List<MagazineVO> getMagazineList(HashMap<String, Object> map);
	
	public List<MagazineVO> findMagazinesByArea(HashMap<String, Object> map);
	
	public List<MagazineVO> findMagazinesByTag(HashMap<String, Object> map);
	
	// 페이징용
	int getTotalCount(HashMap<String, Object> map);
	
	int getTotalCountForArea(String area);
	
	int getTotalCountForTag(String tag);
	
	
	
}

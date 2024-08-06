package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.MagazineVO;


@Mapper 
public interface MagazineDAO {
	// 기본 명소 출력
	public List<MagazineVO> selectMagazineList();
	
}

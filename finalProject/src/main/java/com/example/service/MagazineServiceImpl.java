package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MagazineDAO;
import com.example.domain.MagazineVO;

//** 
@Service	// Service 호출 
public class MagazineServiceImpl implements MagazineService {
	 
	@Autowired
	private MagazineDAO magazineDAO;
	
    public List<MagazineVO> selectMagazineList() {
        return magazineDAO.selectMagazineList();
    }

} 

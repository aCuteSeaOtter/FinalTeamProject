package com.example.service;

import java.util.HashMap;
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
	
    public List<MagazineVO> getMagazineList(HashMap<String, Object> map, int page, int pageSize) {
    	int offset = (page - 1) * pageSize;
        map.put("offset", offset);
        map.put("pageSize", pageSize);
        return magazineDAO.getMagazineList(map);
    }
    
    // 리뷰 총 개수 / 페이징용
    public int getTotalCount(HashMap<String, Object> map) {
        return magazineDAO.getTotalCount(map);
    }

} 

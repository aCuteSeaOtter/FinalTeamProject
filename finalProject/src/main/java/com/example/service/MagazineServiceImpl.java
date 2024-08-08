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
    
    public List<MagazineVO> findMagazinesByArea(HashMap<String, Object> map) {
        int offset = (int) map.get("offset");
        int pageSize = (int) map.get("pageSize");
        
        System.out.println("offset : " + offset + " pageSize : " + pageSize);
        return magazineDAO.findMagazinesByArea(map);
    }
    
    public List<MagazineVO> findMagazinesByTag(HashMap<String, Object> map) {
        int offset = (int) map.get("offset");
        int pageSize = (int) map.get("pageSize");
        
        // 페이징 정보를 맵에 추가
        map.put("offset", offset);
        map.put("pageSize", pageSize);
        
        return magazineDAO.findMagazinesByTag(map);
    }
    
    // 리뷰 총 개수 / 페이징용
    public int getTotalCount(HashMap<String, Object> map) {
        return magazineDAO.getTotalCount(map);
    }
    
    public int getTotalCountForArea(String area) {
        return magazineDAO.getTotalCountForArea(area);
    }
    
    public int getTotalCountForTag(String tag) {
        return magazineDAO.getTotalCountForTag(tag);
    }
    
   

} 

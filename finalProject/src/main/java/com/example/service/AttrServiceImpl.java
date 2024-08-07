package com.example.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.dao.AttrDAO;
import com.example.domain.AttrVO;

//** 
@Service	// Service 호출 
public class AttrServiceImpl implements AttrService {
	 
	//**
	@Autowired
	private AttrDAO attrDAO;
	
    public List<AttrVO> selectAttrList() {
        return attrDAO.selectAttrList();
    }
    
    public List<AttrVO> selectAttrList(int selectedAttrIds) {
        return attrDAO.selectAttrList(selectedAttrIds);
    }
    
    public AttrVO selectAttrListById(Integer id) {
        return attrDAO.selectAttrListById(id);
    }
	
 	// 검색어를 이용한 명소 검색
    public List<AttrVO> searchAttrByKeyword(String keyword) {
        return attrDAO.searchAttrByKeyword(keyword);
    }
    
    // 검색어를 이용한 명소 검색
    public List<AttrVO> selectAttrInfo(int attr_id) {
        return attrDAO.selectAttrInfo(attr_id);
    }
} 

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
	
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
	public List<AttrVO> insertPlan(int day, List<Integer> attrIds) {
        List<AttrVO> result = new ArrayList<>();
        for (Integer attrId : attrIds) {
        	attrDAO.insertPlanItem(day, attrId);
        	AttrVO attrVO = attrDAO.selectInsertedPlan(day, attrId);
            result.add(attrVO);
        }
        return result;
    }*/
} 

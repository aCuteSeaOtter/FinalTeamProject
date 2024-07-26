package com.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.dao.PlanDAO;
import com.example.domain.PlanVO;

//** 
@Service	// Service 호출 
public class PlanServiceImpl implements PlanService {
	 
	//**
	@Autowired
	private PlanDAO planDAO;
	
    public List<PlanVO> selectAttrList() {
        return planDAO.selectAttrList();
    }
	
	public List<PlanVO> insertPlan(int day, List<Integer> attrIds) {
        List<PlanVO> result = new ArrayList<>();
        for (Integer attrId : attrIds) {
            planDAO.insertPlanItem(day, attrId);
            PlanVO planVO = planDAO.selectInsertedPlan(day, attrId);
            result.add(planVO);
        }
        return result;
    }
} 

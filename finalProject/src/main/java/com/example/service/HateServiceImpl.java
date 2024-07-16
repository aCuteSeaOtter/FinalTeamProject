package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.HateDAO;
import com.example.domain.HateVO;

@Service("hateService")
public class HateServiceImpl implements HateService{
	
	@Autowired
	HateDAO hateDAO;
	
	public int getHateStatus(int bno, String id) {
        return hateDAO.getHateStatus(bno, id);
    }

    @Override
    @Transactional
    public void toggleHate(int bno, String id) {
        int currentStatus = hateDAO.getHateStatus(bno, id);
        HateVO hate = new HateVO();
        hate.setBno(bno);
        hate.setId(id);
        if (currentStatus == 0) {
            hate.setStatus(1);
            hateDAO.insertHate(hate);
        } else {
            hateDAO.deleteHate(bno, id);
        }
    }

    @Override
    public int countHates(int bno) {
        return hateDAO.countHates(bno);
    }
}

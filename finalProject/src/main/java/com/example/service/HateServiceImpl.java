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
	
	public int getHateStatus(int review_id, String member_email) {
        return hateDAO.getHateStatus(review_id, member_email);
    }

    @Override
    @Transactional
    public void toggleHate(int review_id, String member_email) {
        int currentStatus = hateDAO.getHateStatus(review_id, member_email);
        HateVO hate = new HateVO();
        hate.setReview_id(review_id);
        hate.setMember_email(member_email);
        if (currentStatus == 0) {
            hate.setHate_state(1);
            hateDAO.insertHate(hate);
        } else {
            hateDAO.deleteHate(review_id, member_email);
        }
    }

    @Override
    public int countHates(int review_id) {
        return hateDAO.countHates(review_id);
    }
}

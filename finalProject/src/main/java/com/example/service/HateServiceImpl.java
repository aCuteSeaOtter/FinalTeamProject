package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.HateDAO;
import com.example.domain.HateVO;

@Service("hateService")
public class HateServiceImpl implements HateService{
	
	// HateDAO 객체 자동 주입
	@Autowired 
	HateDAO hateDAO;
	
	// 싫어요 상태
	public int getHateStatus(int review_id, String member_email) {
		// HateDAO의 getHateStatus 메서드 호출
        return hateDAO.getHateStatus(review_id, member_email);
    }

    
    @Transactional
    public void toggleHate(int review_id, String member_email) {
    	// 현재 싫어요 상태 조회
        int currentStatus = hateDAO.getHateStatus(review_id, member_email);
        // HateVO 객체 생성 및 설정
        HateVO hate = new HateVO();
        hate.setReview_id(review_id);
        hate.setMember_email(member_email);
        // 상태가 0일 때 클릭 시 1로 변경(1은 싫어요)
        if (currentStatus == 0) {
            hate.setHate_state(1);
            hateDAO.insertHate(hate);
        } else {
        	// 0이 아니면 삭제(취소 시 0이 되는 것이 아니고 그냥 바로 삭제 됨)
            hateDAO.deleteHate(review_id, member_email);
        }
    }

    // 싫어요 갯수
    public int countHates(int review_id) {
    	// HateDAO의 countHates 메서드 호출
        return hateDAO.countHates(review_id);
    }
}

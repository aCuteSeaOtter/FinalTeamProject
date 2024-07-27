package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.LikeDAO;
import com.example.domain.LikeVO;

@Service("likeService")
public class LikeServiceImpl implements LikeService{
	
	// HateDAO 객체 자동 주입
	@Autowired
	LikeDAO likeDAO;
	 
	// 좋아요 상태
	public int getLikeStatus(int review_id, String member_email) {
		// LikDAO의 getLikeStatus 메서드 호출
        return likeDAO.getLikeStatus(review_id, member_email);
    }

    
    @Transactional
    public void toggleLike(int review_id, String member_email) {
    	// 현재 좋아요 상태 조회
        int currentStatus = likeDAO.getLikeStatus(review_id, member_email);
        // LikeVO 객체 생성 및 설정
        LikeVO like = new LikeVO();
        like.setReview_id(review_id);
        like.setMember_email(member_email);
        // 상태가 0일 때 클릭 시 1로 변경(1은 좋아요)
        if (currentStatus == 0) {
            like.setLike_state(1);
            likeDAO.insertLike(like);
        } else {
        	// 0이 아니면 삭제(취소 시 0이 되는 것이 아니고 그냥 바로 삭제 됨)
            likeDAO.deleteLike(review_id, member_email);
        }
    }

    // 좋아요 갯수
    public int countLikes(int review_id) {
    	// LikeDAO의 countLikes 메서드 호출
        return likeDAO.countLikes(review_id);
    }
}

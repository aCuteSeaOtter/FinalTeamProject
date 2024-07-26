package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.LikeDAO;
import com.example.domain.LikeVO;

@Service("likeService")
public class LikeServiceImpl implements LikeService{
	
	@Autowired
	LikeDAO likeDAO;
	 
	public int getLikeStatus(int review_id, String member_email) {
        return likeDAO.getLikeStatus(review_id, member_email);
    }

    @Override
    @Transactional
    public void toggleLike(int review_id, String member_email) {
        int currentStatus = likeDAO.getLikeStatus(review_id, member_email);
        LikeVO like = new LikeVO();
        like.setReview_id(review_id);
        like.setMember_email(member_email);
        if (currentStatus == 0) {
            like.setLike_state(1);
            likeDAO.insertLike(like);
        } else {
            likeDAO.deleteLike(review_id, member_email);
        }
    }

    @Override
    public int countLikes(int review_id) {
        return likeDAO.countLikes(review_id);
    }
}

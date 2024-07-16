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
	
	public int getLikeStatus(int bno, String id) {
        return likeDAO.getLikeStatus(bno, id);
    }

    @Override
    @Transactional
    public void toggleLike(int bno, String id) {
        int currentStatus = likeDAO.getLikeStatus(bno, id);
        LikeVO like = new LikeVO();
        like.setBno(bno);
        like.setId(id);
        if (currentStatus == 0) {
            like.setStatus(1);
            likeDAO.insertLike(like);
        } else {
            likeDAO.deleteLike(bno, id);
        }
    }

    @Override
    public int countLikes(int bno) {
        return likeDAO.countLikes(bno);
    }
}

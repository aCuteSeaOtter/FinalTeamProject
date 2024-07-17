package com.example.dao;

import com.example.domain.LikeVO;

public interface LikeDAO {

	int getLikeStatus(int bno, String id);
    void insertLike(LikeVO like);
    void updateLike(LikeVO like);
    void deleteLike(int bno, String id);
    int countLikes(int bno);
}

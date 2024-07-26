package com.example.dao;

import com.example.domain.LikeVO;

public interface LikeDAO {

	int getLikeStatus(int review_id, String member_email);
    void insertLike(LikeVO like);
    void updateLike(LikeVO like);
    void deleteLike(int review_id, String member_email);
    int countLikes(int review_id);
}
 
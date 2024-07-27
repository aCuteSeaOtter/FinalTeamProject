package com.example.dao;

import com.example.domain.LikeVO;

public interface LikeDAO {
	
	// 좋아요 상태
	int getLikeStatus(int review_id, String member_email);
	
	// 좋아요 추가
    void insertLike(LikeVO like);
    
    // 좋아요 상태 변경
    void updateLike(LikeVO like);
    
    // 좋아요 삭제
    void deleteLike(int review_id, String member_email);
    
    // 좋아요 갯수
    int countLikes(int review_id);
}
 
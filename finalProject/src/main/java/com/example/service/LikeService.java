package com.example.service;

public interface LikeService {
	
	// 좋아요 상태
	int getLikeStatus(int review_id, String member_email);
	
	// 좋아요 상태 전환
    void toggleLike(int review_id, String member_email);
    
    // 좋아요 갯수
    int countLikes(int review_id);
} 

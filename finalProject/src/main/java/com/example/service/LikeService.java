package com.example.service;

public interface LikeService {

	int getLikeStatus(int review_id, String member_email);
	
    void toggleLike(int review_id, String member_email);
    
    int countLikes(int review_id);
}

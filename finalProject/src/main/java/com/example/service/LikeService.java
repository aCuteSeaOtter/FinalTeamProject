package com.example.service;

public interface LikeService {

	int getLikeStatus(int bno, String id);
	
    void toggleLike(int bno, String id);
    
    int countLikes(int bno);
}

package com.example.service;

public interface HateService {

	// 댓글 상태
	int getHateStatus(int review_id, String member_email);
	
	// 싫어요 상태 전환
    void toggleHate(int review_id, String member_email);
    
    // 싫어요 갯수
    int countHates(int review_id); 
}

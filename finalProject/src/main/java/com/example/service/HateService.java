package com.example.service;

public interface HateService {

	int getHateStatus(int review_id, String member_email);
	
    void toggleHate(int review_id, String member_email);
    
    int countHates(int review_id);
}

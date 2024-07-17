package com.example.service;

public interface HateService {

	int getHateStatus(int bno, String id);
	
    void toggleHate(int bno, String id);
    
    int countHates(int bno);
}

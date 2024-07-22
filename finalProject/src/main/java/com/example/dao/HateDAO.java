package com.example.dao;

import com.example.domain.HateVO;

public interface HateDAO {
	
	int getHateStatus(int review_id, String member_email);
	
    void insertHate(HateVO hate);
    
    void updateHate(HateVO hate);
    
    void deleteHate(int review_id, String member_email);
    
    int countHates(int review_id);
}

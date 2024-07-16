package com.example.dao;

import com.example.domain.HateVO;

public interface HateDAO {
	
	int getHateStatus(int bno, String id);
	
    void insertHate(HateVO hate);
    
    void updateHate(HateVO hate);
    
    void deleteHate(int bno, String id);
    
    int countHates(int bno);
}

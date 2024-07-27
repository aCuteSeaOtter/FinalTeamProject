package com.example.dao;

import com.example.domain.HateVO;

public interface HateDAO {
	
	// 싫어요 상태
	int getHateStatus(int review_id, String member_email);
	
	// 싫어요 추가
    void insertHate(HateVO hate);
    
    // 싫어요 상태 변경
    void updateHate(HateVO hate);
    
    // 싫어요 취소
    void deleteHate(int review_id, String member_email);
    
    // 싫어요 갯수
    int countHates(int review_id);
}
 
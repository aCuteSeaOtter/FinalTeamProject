package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.NoticeVO;

public interface NoticeService {

	// 문의사항 목록보기
	List<NoticeVO> getNoticeList(HashMap<String, Object> map);

	// 문의사항 페이징
    int getTotalCount(HashMap<String, Object> map);
}

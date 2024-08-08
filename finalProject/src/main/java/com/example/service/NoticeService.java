package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.NoticeVO;

public interface NoticeService {

	List<NoticeVO> getNoticeList(HashMap<String, Object> map);
	
    int getTotalCount(HashMap<String, Object> map);
}

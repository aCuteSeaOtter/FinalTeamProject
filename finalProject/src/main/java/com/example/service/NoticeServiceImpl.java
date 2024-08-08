package com.example.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.NoticeDAO;
import com.example.domain.NoticeVO;

@Service 
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
    private NoticeDAO noticeDAO;
	
	public List<NoticeVO> getNoticeList(HashMap<String, Object> map) {
        return noticeDAO.getNoticeList(map);
    }

    public int getTotalCount(HashMap<String, Object> map) {
        return noticeDAO.getTotalCount(map);
    }
}

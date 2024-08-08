package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.NoticeVO;

@Mapper
public interface NoticeDAO {
	
	List<NoticeVO> getNoticeList(HashMap<String, Object> map);
	
    int getTotalCount(HashMap<String, Object> map);
}

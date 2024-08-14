package com.example.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.NoticeVO;

@Mapper
public interface NoticeDAO {
	
	// 공지사항 목록보기
	List<NoticeVO> getNoticeList(HashMap<String, Object> map);

	// 공지사항 페이징
    int getTotalCount(HashMap<String, Object> map);
}

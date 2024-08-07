package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.NoticeVO;

@Mapper
public interface NoticeDAO {
	
	List<NoticeVO> getNoticeList();
}

package com.example.dao;

import java.util.List;
import java.util.Map;

import com.example.domain.ReplyVO;

public interface ReplyDAO {
	
	 Integer insertReply(ReplyVO vo);
	 
	 List<Map<String, Object>> selectAllReply(Integer comment_id);
	 
	 public int deleteReply(Integer reply_id);
}

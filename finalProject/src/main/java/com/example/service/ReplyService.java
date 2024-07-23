package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.CommentVO;
import com.example.domain.ReplyVO;

public interface ReplyService {
	
	public Integer insertReply(ReplyVO vo);
	
    public List<Map<String, Object>> selectAllReply(Integer comment_id);
    
    Integer deleteReply(Integer reply_id);
}

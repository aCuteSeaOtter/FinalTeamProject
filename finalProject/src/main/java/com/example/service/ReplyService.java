package com.example.service;

import java.util.List;
import java.util.Map;

import com.example.domain.CommentVO;
import com.example.domain.ReplyVO;

public interface ReplyService {
	
	// 대댓글 작성
	public Integer insertReply(ReplyVO vo);
	
	// 대댓글 목록 출
    public List<Map<String, Object>> selectAllReply(Integer comment_id);
     
    // 대댓글 삭제
    Integer deleteReply(Integer reply_id);
}

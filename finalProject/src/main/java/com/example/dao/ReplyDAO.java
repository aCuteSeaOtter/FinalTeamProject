package com.example.dao;

import java.util.List;
import java.util.Map;

import com.example.domain.ReplyVO;

public interface ReplyDAO {
	
	 // 대댓글 작성
	 Integer insertReply(ReplyVO vo);
	 
	 // 대댓글 목록 출력
	 List<Map<String, Object>> selectAllReply(Integer comment_id);
	 
	 // 대댓글 삭제
	 public int deleteReply(Integer reply_id);
}
 
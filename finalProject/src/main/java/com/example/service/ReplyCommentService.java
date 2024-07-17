package com.example.service;

import java.util.List;

import com.example.domain.ReplyCommentVO;

public interface ReplyCommentService {
	
	public Integer insertReplyComment(ReplyCommentVO vo);
	
    public List<ReplyCommentVO> selectAllReplyComment(Integer rno);
    
    Integer deleteReplyComment(Integer rcno);
}

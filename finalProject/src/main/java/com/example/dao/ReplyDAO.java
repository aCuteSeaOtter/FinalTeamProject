package com.example.dao;

import java.util.List;

import com.example.domain.ReplyVO;

	public interface ReplyDAO {

	public Integer insertReply(ReplyVO vo); 
	
	public List<ReplyVO> selectAllReply(Integer bno);
	
	public int deleteReply(Integer rno);
	
	public void updateReply(ReplyVO vo);
}

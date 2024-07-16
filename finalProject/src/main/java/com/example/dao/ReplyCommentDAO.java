package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.domain.ReplyCommentVO;

public interface ReplyCommentDAO {
	
	 Integer insertReplyComment(ReplyCommentVO vo);
	 
	 List<ReplyCommentVO> selectAllReplyComment(Integer rno);
	 
	 public int deleteReplyComment(Integer rcno);
}

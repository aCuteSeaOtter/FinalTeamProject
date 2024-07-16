package com.example.service;

import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.ReplyVO;

public interface ReplyService {

	// 댓글추가
	Integer insertReply(ReplyVO vo);
	// 댓글목록보기
	public List<ReplyVO> selectAllReply(Integer bno);
	// 댓글삭제
	Integer deleteReply(Integer rno);
	
	void updateReply(ReplyVO vo);
}

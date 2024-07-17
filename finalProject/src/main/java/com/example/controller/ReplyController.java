package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.ReplyVO;
import com.example.service.ReplyService;

@RestController
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	@PostMapping("replies/new")
	public String insert(ReplyVO vo) {
		Integer result = replyService.insertReply(vo);
		if(result == 1) return "success"; 
		else return "fail";
	}
	
	@GetMapping("replies")
	public List<ReplyVO> selectAll(Integer bno) {
		List<ReplyVO> list = replyService.selectAllReply(bno);
		return list;
	}
	
	@DeleteMapping("replies/{rno}")
	public Integer delete(@PathVariable Integer rno) {
		return replyService.deleteReply(rno);
	}
	
	@PostMapping("replies/{rno}")
	public void modify(@PathVariable Integer rno, ReplyVO vo) {
		
	}
}

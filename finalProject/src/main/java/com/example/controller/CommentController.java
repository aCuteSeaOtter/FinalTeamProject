package com.example.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.CommentVO;
import com.example.service.CommentService;

//RESTful 웹 서비스의 컨트롤러
@RestController
public class CommentController { 
	
	// CommentService를 자동으로 주입
	@Autowired
	CommentService commentService;
	
	// 댓글 작성
	@PostMapping("comment/new")
	public String insert(CommentVO vo) {
		// CommentService를 이용해 댓글을 추가하고 결과를 반환
		Integer result = commentService.insertComment(vo);
		// 성공 시 "success" 반환, 실패 시 "fail" 반환
		if(result == 1) return "success"; 
		else return "fail";
	}
	
	// 댓글 목록 출력
	@GetMapping("comments")
	   public List<Map<String, Object>> selectAll(Integer review_id) {
		   // review_id에 해당하는 모든 댓글을 조회하여 반환
	       return commentService.selectAllComment(review_id);
	   }
	
	// 댓글 삭제
	@DeleteMapping("comments/{comment_id}")
	public Integer delete(@PathVariable Integer comment_id) {
		// comment_id에 해당하는 댓글을 삭제하고 삭제된 댓글 수를 반환
		return commentService.deleteComment(comment_id);
	}
}

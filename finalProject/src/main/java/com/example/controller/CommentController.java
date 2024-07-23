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



@RestController
public class CommentController {
	
	@Autowired
	CommentService commentService;
	
	@PostMapping("comment/new")
	public String insert(CommentVO vo) {
		Integer result = commentService.insertComment(vo);
		if(result == 1) return "success"; 
		else return "fail";
	}
	
	@GetMapping("comments")
	   public List<Map<String, Object>> selectAll(Integer review_id) {
	       List<Map<String, Object>> list = commentService.selectAllComment(review_id);
	       return list;
	   }
	
	@DeleteMapping("comments/{comment_id}")
	public Integer delete(@PathVariable Integer comment_id) {
		return commentService.deleteComment(comment_id);
	}
	
	@PostMapping("comments/{comment_id}")
	public void modify(@PathVariable Integer comment_id, CommentVO vo) {
		
	}
}

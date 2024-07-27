package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.service.HateService;

// RESTful 웹 서비스의 컨트롤러
@RestController 

// 싫어요 관련 요청 처리 컨트롤러
@RequestMapping("/hates")
public class HateController {
 
	// HateService 객체 자동 주입
	@Autowired
    private HateService hateService;
	
	// 해당 리뷰의 싫어요 상태
    @GetMapping("/{review_id}/{member_email}")
    public int getHateStatus(@PathVariable int review_id, @PathVariable String member_email) {
    	// review_id와 member_email을 사용하여 싫어요 상태 반환
        return hateService.getHateStatus(review_id, member_email);
    }
    
    // 해당 리뷰의 싫어요 상태 전환
    @PostMapping("/{review_id}/{member_email}")
    public void toggleHate(@PathVariable int review_id, @PathVariable String member_email) {
    	// review_id와 member_email을 사용하여 싫어요 상태 전환
        hateService.toggleHate(review_id, member_email);
    }

    // 해당 리뷰의 싫어요 갯수
    @GetMapping("/count/{review_id}")
    public int countHates(@PathVariable int review_id) {
    	 // review_id를 사용하여 싫어요 수 반환
        return hateService.countHates(review_id);
    }
}
package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.service.LikeService;

// RESTful 웹 서비스의 컨트롤러
@RestController

// 좋아요 관련 요청 처리 컨트롤러
@RequestMapping("/likes")
public class LikeController {

	// LikeService 객체 자동 주입
	@Autowired 
    private LikeService likeService;

	// 해당 리뷰의 좋아요 상태
    @GetMapping("/{review_id}/{member_id}")
    public int getLikeStatus(@PathVariable int review_id, @PathVariable String member_id) {
    	// review_id와 member_email을 사용하여 좋아요 상태 반환
        return likeService.getLikeStatus(review_id, member_id);
    }

    // 해당 리뷰의 좋아요 상태 전환
    @PostMapping("/{review_id}/{member_id}")
    public void toggleLike(@PathVariable int review_id, @PathVariable String member_id) {
    	// review_id와 member_email을 사용하여 싫어요 상태 전환
        likeService.toggleLike(review_id, member_id);
    }
    
 // 해당 리뷰의 좋아요 갯수
    @GetMapping("/count/{review_id}")
    public int countLikes(@PathVariable int review_id) {
    	// review_id를 사용하여 좋아요 수 반환
        return likeService.countLikes(review_id);
    }
}

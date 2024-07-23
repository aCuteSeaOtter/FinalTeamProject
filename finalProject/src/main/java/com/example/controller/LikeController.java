package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.service.LikeService;

@RestController
@RequestMapping("/likes")
public class LikeController {

	@Autowired
    private LikeService likeService;

    @GetMapping("/{review_id}/{member_id}")
    public int getLikeStatus(@PathVariable int review_id, @PathVariable String member_id) {
        return likeService.getLikeStatus(review_id, member_id);
    }

    @PostMapping("/{review_id}/{member_id}")
    public void toggleLike(@PathVariable int review_id, @PathVariable String member_id) {
    	System.out.println("게시글번호:" + review_id);
    	System.out.println("사용자 아이디 :" + member_id);
        likeService.toggleLike(review_id, member_id);
    }
    
    @GetMapping("/count/{review_id}")
    public int countLikes(@PathVariable int review_id) {
        return likeService.countLikes(review_id);
    }
}

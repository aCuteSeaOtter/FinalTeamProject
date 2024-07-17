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

    @GetMapping("/{bno}/{id}")
    public int getLikeStatus(@PathVariable int bno, @PathVariable String id) {
        return likeService.getLikeStatus(bno, id);
    }

    @PostMapping("/{bno}/{id}")
    public void toggleLike(@PathVariable int bno, @PathVariable String id) {
    	System.out.println("게시글번호:" + bno);
    	System.out.println("사용자 아이디 :" + id);
        likeService.toggleLike(bno, id);
    }
    
    @GetMapping("/count/{bno}")
    public int countLikes(@PathVariable int bno) {
        return likeService.countLikes(bno);
    }
}

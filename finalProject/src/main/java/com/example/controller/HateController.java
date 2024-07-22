package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.service.HateService;

@RestController
@RequestMapping("/hates")
public class HateController {

	@Autowired
    private HateService hateService;

    @GetMapping("/{review_id}/{member_email}")
    public int getHateStatus(@PathVariable int review_id, @PathVariable String member_email) {
        return hateService.getHateStatus(review_id, member_email);
    }

    @PostMapping("/{review_id}/{member_email}")
    public void toggleHate(@PathVariable int review_id, @PathVariable String member_email) {
    	System.out.println("게시글번호:" + review_id);
    	System.out.println("사용자 아이디 :" + member_email);
        hateService.toggleHate(review_id, member_email);
    }

    @GetMapping("/count/{review_id}")
    public int countHates(@PathVariable int review_id) {
        return hateService.countHates(review_id);
    }
}
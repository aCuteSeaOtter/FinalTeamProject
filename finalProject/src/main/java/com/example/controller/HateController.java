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

    @GetMapping("/{bno}/{id}")
    public int getHateStatus(@PathVariable int bno, @PathVariable String id) {
        return hateService.getHateStatus(bno, id);
    }

    @PostMapping("/{bno}/{id}")
    public void toggleHate(@PathVariable int bno, @PathVariable String id) {
    	System.out.println("게시글번호:" + bno);
    	System.out.println("사용자 아이디 :" + id);
        hateService.toggleHate(bno, id);
    }

    @GetMapping("/count/{bno}")
    public int countHates(@PathVariable int bno) {
        return hateService.countHates(bno);
    }
}
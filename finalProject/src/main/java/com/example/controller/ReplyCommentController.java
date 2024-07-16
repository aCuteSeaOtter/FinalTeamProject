package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.domain.ReplyCommentVO;
import com.example.service.ReplyCommentService;

@RestController
@RequestMapping("/repliesComment") // 공통 경로 설정
public class ReplyCommentController {

    @Autowired
    ReplyCommentService replyCommentService;
    
    

    @PostMapping("/new")
    public ResponseEntity<String> insertReplyComment(@RequestBody ReplyCommentVO vo) {
        Integer result = replyCommentService.insertReplyComment(vo);
        if(result == 1) {
            return ResponseEntity.ok("success");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("fail");
        }
    }

    @GetMapping("/nested")
    public ResponseEntity<List<ReplyCommentVO>> selectAllReplyComment(@RequestParam Integer rno){
        List<ReplyCommentVO> list = replyCommentService.selectAllReplyComment(rno);
        
        return ResponseEntity.ok(list);
    }
    
    @DeleteMapping("/deleteReplyComment/{rcno}")
    public ResponseEntity<String> deleteReplyComment(@PathVariable Integer rcno) {
        try {
            int result = replyCommentService.deleteReplyComment(rcno);
            if (result == 1) {
                return new ResponseEntity<>("success", HttpStatus.OK);
            } else {
                return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } catch (Exception e) {
            e.printStackTrace();  // 로그에 에러를 출력
            return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

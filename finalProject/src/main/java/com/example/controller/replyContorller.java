package com.example.controller;

import java.util.List;
import java.util.Map;

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

import com.example.domain.ReplyVO;
import com.example.service.ReplyService;

@RestController
@RequestMapping("/replies") // 공통 경로 설정
public class replyContorller {

    @Autowired 
    ReplyService replyService;
    
    

    @PostMapping("/new")
    public ResponseEntity<String> insertReply(@RequestBody ReplyVO vo) {
        Integer result = replyService.insertReply(vo);
        if(result == 1) {
            return ResponseEntity.ok("success");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("fail");
        }
    }

    @GetMapping("/nested")
    public ResponseEntity<List<Map<String, Object>>> selectAllReply(@RequestParam Integer comment_id){
    	List<Map<String, Object>> list = replyService.selectAllReply(comment_id);
        
        return ResponseEntity.ok(list);
    }
    
    @DeleteMapping("/deleteReply/{reply_id}")
    public ResponseEntity<String> deleteReply(@PathVariable Integer reply_id) {
        try {
            int result = replyService.deleteReply(reply_id);
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

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

//RESTful 웹 서비스의 컨트롤러
@RestController

// 대댓글 관련 요청 처리
@RequestMapping("/replies") // 공통 경로 설정
public class ReplyContorller {

	// ReplyServie 객체 자동 주입
    @Autowired 
    ReplyService replyService;
    
    // 대댓글 작성
    @PostMapping("/new")
    public ResponseEntity<String> insertReply(@RequestBody ReplyVO vo) {
    	// 댓글을 데이터베이스에 삽입하고 결과 반환
        Integer result = replyService.insertReply(vo);
        if(result == 1) { // 삽입 성공 시 (결과가 1이면 성공을 의미)
        	// HTTP 200 응답과 함께 "success" 메시지 반환
            return ResponseEntity.ok("success");
        } else { // HTTP 500 응답과 함께 "fail" 메시지 반환
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("fail");
        }
    }

    // 대댓글 목록 조회
    @GetMapping("/nested")
    public ResponseEntity<List<Map<String, Object>>> selectAllReply(@RequestParam Integer comment_id){
    	List<Map<String, Object>> list = replyService.selectAllReply(comment_id);
        
        return ResponseEntity.ok(list);
    }
    
    // 대댓글 삭제
    @DeleteMapping("/deleteReply/{reply_id}")
    public ResponseEntity<String> deleteReply(@PathVariable Integer reply_id) {
        try {
        	// reply_id에 해당하는 댓글을 삭제
            int result = replyService.deleteReply(reply_id);
            // 삭제 성공 시 (결과가 1이면 성공을 의미)
            if (result == 1) { // HTTP 200 응답과 함께 "success" 메시지 반환
                return new ResponseEntity<>("success", HttpStatus.OK);
             // 삭제 실패 시 (결과가 1이 아니면 실패를 의미)
            } else { // HTTP 500 응답과 함께 "fail" 메시지 반환
                return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
            }
          // 예외 발생 시 스택 트레이스 출력
        } catch (Exception e) {
            e.printStackTrace();  // 로그에 에러를 출력
            // HTTP 500 응답과 함께 "fail" 메시지 반환
            return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

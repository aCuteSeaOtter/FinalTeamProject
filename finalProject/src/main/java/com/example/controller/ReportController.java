package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LoginVO;
import com.example.domain.ReportVO;
import com.example.service.ReportService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller

// 신고 관련 요청 처리 컨트롤러
@RequestMapping("/report")
public class ReportController {
	
	// ReportService 객체를 자동으로 주입
	@Autowired 
	private ReportService reportService;
	
	// 신고 페이지 이동
	@GetMapping("/reportWrite")
    public String showReportPage(
    		// 각 값들에 대한 파라미터
            @RequestParam(value = "review_id", required = false) String review_id,
            @RequestParam(value = "comment_id", required = false) String comment_id,
            @RequestParam(value = "reply_id", required = false) String reply_id,
            // 뷰에 데이터를 전달하기 위한 모델 객체
    		Model model,
    		HttpSession session) {
		
			LoginVO member = (LoginVO) session.getAttribute("member");
        
        // 세션에서 가져온 ID를 모델에 추가
        if (member != null) {
        	model.addAttribute("id", member);
        } else {
            System.out.println("id값이 null입니다. 세션에 id가 설정되지 않았습니다.");
        }
        
        // URL 파라미터로 전달된 값 로그 출력
        System.out.println("review_id: " + review_id);
        System.out.println("comment_id: " + comment_id);
        System.out.println("reply_id: " + reply_id);

        // URL 파라미터를 모델에 추가
        if (review_id != null) {
            model.addAttribute("review_id", review_id);
        }
        if (comment_id != null) {
            model.addAttribute("comment_id", comment_id);
        }
        if (reply_id != null) {
            model.addAttribute("reply_id", reply_id);
        }
		return "report/reportWrite";
    }
	
	// 신고 저장
	@RequestMapping("saveReport")
	public void saveReport(ReportVO vo, Model m
			, HttpSession session
			, HttpServletResponse response
			,@RequestParam(value = "review_id", required = false) String review_id,
             @RequestParam(value = "comment_id", required = false) String comment_id,
             @RequestParam(value = "reply_id", required = false) String reply_id) {
		
		// 세션에서 사용자 ID 가져오기
        String id = (String) session.getAttribute("sess");

        // ReportVO에 사용자 ID 설정
        vo.setMember_email(id);
        
        // 작성 완료 시 팝업 메시지 띄운 후 해당 페이지로 이동
		reportService.insertReport(vo);
		PopUp.popUpMove(response, "신고가 완료되었습니다.", "/review/reviewList");
		
	}
}
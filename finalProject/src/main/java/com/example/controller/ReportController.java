package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.ReportVO;
import com.example.service.ReportService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	
	@GetMapping("/reportWrite")
    public String showReportPage(
            @RequestParam(value = "review_id", required = false) String review_id,
            @RequestParam(value = "comment_id", required = false) String comment_id,
            @RequestParam(value = "reply_id", required = false) String reply_id,
    		Model model,
    		HttpSession session) {
		// 세션에서 사용자 ID 가져오기
        String id = (String) session.getAttribute("sess");
        System.out.println("reportWrite 페이지 이동 시 세션에서 가져온 id값: " + id);
        
        if (id != null) {
        	model.addAttribute("id", id);
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
	
	@RequestMapping("saveReport")
	public String saveReport(ReportVO vo, Model m
			, HttpSession session
			, HttpServletResponse response
			,@RequestParam(value = "review_id", required = false) String review_id,
             @RequestParam(value = "comment_id", required = false) String comment_id,
             @RequestParam(value = "reply_id", required = false) String reply_id) {
		// 세션에서 사용자 ID 가져오기
        String id = (String) session.getAttribute("sess");
        System.out.println("insertReport 세션에서 가져온 id값: " + id);
        
        System.out.println("report VO : "+vo);
        // ReportVO에 사용자 ID 설정
        vo.setMember_email(id);
        
        
		reportService.insertReport(vo);
		return "redirect:/review/getReviewList";
	}
}
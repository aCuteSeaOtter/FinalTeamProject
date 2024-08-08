package com.example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.NoticeVO;
import com.example.service.NoticeService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	 @Autowired
	 private NoticeService noticeService;
	
	 @RequestMapping("/noticeList")
	    public String getNoticeList(Model model,
	                                @RequestParam(required = false) String searchCondition,
	                                @RequestParam(required = false) String searchKeyword,
	                                @RequestParam(defaultValue = "1") int page,
	                                HttpSession session) {

	        int pageSize = 10; // 페이지당 공지사항 수
	        int offset = (page - 1) * pageSize; // 오프셋 계산

	        // 검색 조건 및 키워드를 위한 맵 생성
	        HashMap<String, Object> map = new HashMap<>();
	        map.put("searchCondition", searchCondition);
	        map.put("searchKeyword", searchKeyword);
	        map.put("offset", offset);
	        map.put("pageSize", pageSize);

	        // 총 공지사항 수 조회
	        int totalCount = noticeService.getTotalCount(map);
	        int totalPages = (int) Math.ceil((double) totalCount / pageSize);

	        // 공지사항 목록 조회
	        List<NoticeVO> noticeList = noticeService.getNoticeList(map);

	        // 모델에 공지사항 목록 및 페이지 정보 추가
	        model.addAttribute("noticeList", noticeList);
	        model.addAttribute("searchCondition", searchCondition);
	        model.addAttribute("searchKeyword", searchKeyword);
	        model.addAttribute("currentPage", page);
	        model.addAttribute("totalPages", totalPages);

	        return "notice/noticeList";
	    }
	}
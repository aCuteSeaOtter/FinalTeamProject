package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.NoticeVO;
import com.example.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	 @Autowired
	 private NoticeService noticeService;
	
	@RequestMapping("/noticeList")
	public String getNoticeList(Model model) {
		List<NoticeVO> noticeList = noticeService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";
	}
}

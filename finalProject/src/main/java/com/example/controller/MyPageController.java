package com.example.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LoginVO;
import com.example.service.MyPageService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@RequestMapping("/plan/myPage")
	public String planList(Model m, HttpSession session) {
		LoginVO member = (LoginVO)session.getAttribute("member");
		if(member == null) {
			return "redirect:/login/loginForm";
		}
		String user_id = member.getMember_email();
		
		// 내 정보
		List<Map<String, Object>> myInfo = myPageService.selectMyInfo(user_id);
		m.addAttribute("myInfo", myInfo);
		
		// 나의 일정
		List<Map<String, Object>> planList = myPageService.selectPlanList(user_id);
		m.addAttribute("planList", planList);
		
		return "plan/myPage";
	}
	
	// 내 정보 수정
	@PostMapping("/modifyMyInfo")
	public String modifyMyInfo(HttpSession session, @RequestParam("pass") String pass, @RequestParam("nickname") String nickname, @RequestParam("birth") String birth) {
		LoginVO member = (LoginVO)session.getAttribute("member");
		if(member == null) {
			return "redirect:/login/loginForm";
		}
		String user_id = member.getMember_email();
		
		// 내 정보 수정
		myPageService.modifyMyInfo(user_id, pass, nickname, birth);
		
		return "plan/myPage";
	}
} 

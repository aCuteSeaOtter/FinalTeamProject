package com.example.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LoginVO;
import com.example.service.TravelInfoService;

import jakarta.servlet.http.HttpSession;

@Controller
public class TravelInfoController {
	
	@Autowired
	private TravelInfoService travelInfoService;
	
	// calendar -> plan 이동 
	// calendar/calendar 페이지에서 일정 등록
	// plan/plan 페이지에 선택한 날짜 출력 및 선택한 일자 수 만큼 일정 생성칸 추가
	@PostMapping("/calendar/plan")
	public String travelInfo(@RequestParam("info_name") String info_name,
							 @RequestParam("trip_place") String trip_place,
							 @RequestParam("dates") String dates,
							 @RequestParam("who_tag") String who_tag, 
							 @RequestParam("style_tag") String styleTags,
							 HttpSession session) {
		
		List<String> dateList = Arrays.asList(dates.split(","));
		List<String> styleTagList = Arrays.asList(styleTags.split(","));
		
		// 리스트를 쉼표로 구분된 문자열로 변환
        String style_tag = String.join(", ", styleTagList);
		
		String start_date = dateList.get(0);
		String end_date = dateList.get(dateList.size()-1);
		
		LoginVO member = (LoginVO)session.getAttribute("member");
		String member_email = member.getMember_email();
		// 서비스 호출하여 데이터 저장
		travelInfoService.insertTravelInfo(member_email, info_name, trip_place, start_date, end_date, who_tag, style_tag);
		
		// info_id 가져오기
		String info_id = travelInfoService.selectTravelInfo();
		
		session.setAttribute("info_id", info_id);
		session.setAttribute("info_name", info_name);
		session.setAttribute("trip_place", trip_place);
		session.setAttribute("start_date", start_date);
		session.setAttribute("end_date", end_date);
		session.setAttribute("who_tag", who_tag);
		session.setAttribute("style_tag", style_tag);
		
		return "redirect:/plan/plan";
	}
} 

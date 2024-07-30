package com.example.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.TravelInfoVO;
import com.example.service.TravelInfoService;

@Controller
public class TravelInfoController {
	
	@Autowired
	private TravelInfoService travelInfoService;
	
	// calendar -> plan 이동 
	// plan/plan 페이지에 선택한 날짜 출력 및 선택한 일자 수 만큼 일정 생성칸 추가
	@PostMapping("/calendar/plan")
	public String travelInfo(@RequestParam("info_name") String info_name,
							 @RequestParam("trip_place") String trip_place,
							 @RequestParam("dates") String dates,
							 @RequestParam("who_tag") String who_tag, 
							 @RequestParam("style_tag") String styleTags,
							 RedirectAttributes redirectAttributes) {
		
		List<String> dateList = Arrays.asList(dates.split(","));
		List<String> styleTagList = Arrays.asList(styleTags.split(","));
		
		// 리스트를 쉼표로 구분된 문자열로 변환
        String style_tag = String.join(", ", styleTagList);
		
		String start_date = dateList.get(0);
		String end_date = dateList.get(dateList.size()-1);
		
		// 서비스 호출하여 데이터 저장
		travelInfoService.saveTravelInfo(info_name, trip_place, start_date, end_date, who_tag, style_tag);
		
		TravelInfoVO vo = new TravelInfoVO();
		vo.setInfo_name(info_name);
		vo.setTrip_place(trip_place);
		vo.setStart_date(start_date);
		vo.setEnd_date(end_date);
		vo.setWho_tag(who_tag);
		vo.setStyle_tag(style_tag);

		redirectAttributes.addFlashAttribute("travelInfo", vo);
		
		return "redirect:/plan/plan";
	}
} 

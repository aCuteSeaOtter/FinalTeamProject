package com.example.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.AttrVO;
import com.example.domain.LoginVO;
import com.example.service.AttrService;
import com.example.service.MyPlanService;
import com.example.service.TravelInfoService;
import com.example.service.TravelPlanService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyPlanController {
	
	@Autowired
	private MyPlanService myPlanService;
	
	@Autowired
	private AttrService attrService;
	
	@Autowired
    private TravelInfoService travelInfoService;
	
	@Autowired
	private TravelPlanService travelPlanService;
	
	// myPage 일정 상세보기
	@PostMapping("/selectMyPlan")
	public String selectMyPlan(@RequestParam("info_id") int info_id, RedirectAttributes r) {
		List<Map<String, Object>> result = myPlanService.selectMyPlan(info_id);
		
		// plan_day 값을 추출하되, null 체크를 포함합니다.
		List<Integer> planDays = result.stream()
			    .map(map -> {Object planDay = map.get("PLAN_DAY");
			        return ((BigDecimal) planDay).intValue();
			    })
			    .filter(Objects::nonNull)
			    .distinct()
			    .sorted()
			    .collect(Collectors.toList());
		
		// plan_day로 그룹화
	    Map<Integer, List<Map<String, Object>>> groupedPlans = result.stream()
	        .collect(Collectors.groupingBy(
	            map -> ((BigDecimal) map.get("PLAN_DAY")).intValue(),
	            Collectors.toList()
	        ));
	    
	    // 결과를 정렬된 형태로 변환합니다.
	    List<Map<String, Object>> organizedPlans = planDays.stream()
	        .map(day -> {
	            Map<String, Object> dayPlan = new HashMap<>();
	            dayPlan.put("plan_day", day);
	            dayPlan.put("attr_name", groupedPlans.get(day));
	            return dayPlan;
	        })
	        .collect(Collectors.toList());
		
		r.addFlashAttribute("myPlan", organizedPlans);
		
		return "redirect:plan/myPlan";
	}
	
	// myPage 일정 상세 모달
	@PostMapping("/editAttr")
	@ResponseBody
	public List<AttrVO> editAttr(@RequestParam("trip_place") String tripPlace) {
		String[] parts = tripPlace.trim().split("\\s+");
	    String trip_place = parts[parts.length - 1];
		
		List<AttrVO> result = attrService.editAttrList(trip_place);
		
		return result;
	}
	
	// 선택된 날짜
	@PostMapping("/calDates")
	@ResponseBody
	public List<String> calDates(@RequestParam("info_id") int infoId) {
		// info_id로 선택한 날짜들 가져오기
        List<String> result = travelInfoService.calDates(infoId);
        
		return result;
	}
	
	// 일정 편집
	@PostMapping("/editPlan")
	@ResponseBody
	public String editPlan(@RequestParam("day") int plan_day, @RequestParam(value="data") List<Integer> attr_id, @RequestParam("info_id") int info_id) {
		
		// 일정 비우기
		travelPlanService.delPlan(info_id, plan_day);
		
		// 명소의 수 만큼 데이터 저장
		for (int i = 0; i < attr_id.size(); i++) {
	        int plan_seq = getNextPlanSeq(info_id, plan_day);
	        travelPlanService.updateTravelPlan(info_id, attr_id.get(i), plan_day, plan_seq);
	    }
		
		return "편집성공";
	}
	
	@PostMapping("/updateSeq")
	@ResponseBody
	public String updateSeq(@RequestBody Map<String, Object> data) {
		List<Map<String, Object>> itemIndices = (List<Map<String, Object>>) data.get("itemIndices");
		
		if (itemIndices != null) {
            for (Map<String, Object> item : itemIndices) {
            	String attr_id  = (String) item.get("id");
            	int plan_seq    = (int) item.get("index");
            	String info_id  = (String) item.get("info_id");
            	String plan_day = (String) item.get("day");
            	
                travelPlanService.updateSeq(attr_id, plan_seq, info_id, plan_day);
            }
        }
		
		return "성공";
	}
	
	
	
	@RequestMapping("/plan/myPlan")
	public String myPlan(HttpSession session) {
		
		LoginVO member = (LoginVO)session.getAttribute("member");
        if (member == null) {
	        // 회원 정보가 세션에 없을 경우 로그인 페이지로 리다이렉트
	        return "redirect:/login/loginForm";
	    }
		
		return "plan/myPlan";
	}
	
	
	private int getNextPlanSeq(int info_id, int plan_day) {
	    int existingPlansCount = travelPlanService.countTravelPlans(info_id, plan_day);
	    return existingPlansCount + 1;
	}
} 

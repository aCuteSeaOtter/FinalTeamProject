package com.example.controller;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.LoginVO;
import com.example.domain.TravelInfoVO;
import com.example.domain.TravelPlanVO;
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
    
    @RequestMapping("/plan/planList")
    public String getPlanList(Model m) {
    	List<TravelInfoVO> travelInfoList = travelInfoService.getAllTravelInfo();
        m.addAttribute("travelInfoList", travelInfoList);
        return "/plan/planList";
    }
    
    @RequestMapping("/plan/selectPlan")
    public String getSelectPlan(@RequestParam("info_id") int info_id, Model model) {
        List<Map<String, Object>> result = travelInfoService.selectPlan(info_id);
        System.out.println("selectPlan : " + result);
        
        List<Integer> planDays = result.stream()
                .map(map -> {
                    Object planDay = map.get("PLAN_DAY");
                    return ((BigDecimal) planDay).intValue();
                })
                .filter(Objects::nonNull)
                .distinct()
                .sorted()
                .collect(Collectors.toList());

        Map<Integer, List<Map<String, Object>>> groupedPlans = result.stream()
            .collect(Collectors.groupingBy(
                map -> ((BigDecimal) map.get("PLAN_DAY")).intValue(),
                Collectors.toList()
            ));

        List<Map<String, Object>> organizedPlans = planDays.stream()
            .map(day -> {
                Map<String, Object> dayPlan = new HashMap<>();
                dayPlan.put("plan_day", day);
                dayPlan.put("attr_name", groupedPlans.get(day));
                return dayPlan;
            })
            .collect(Collectors.toList());

        model.addAttribute("myPlan", organizedPlans);
        System.out.println("myPlan : " + organizedPlans);

        return "/plan/selectPlan";
    }



}

package com.example.controller;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.LoginVO;
import com.example.domain.TravelInfoVO;
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
        if (member == null) {
	        // 회원 정보가 세션에 없을 경우 로그인 페이지로 리다이렉트
	        return "redirect:/login/loginForm";
	    }
        
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
    
    // 여행 계획 목록 보기
    @RequestMapping("/plan/planList")
    public String getPlanList(Model m,
                              @RequestParam(required = false) String searchCondition,
                              @RequestParam(required = false) String searchKeyword,
                              @RequestParam(defaultValue = "1") int page) {

        int pageSize = 6; // 페이지당 여행 계획 수
        
        // 페이지와 페이지당 데이터 수를 이용해 offset 계산
        int offset = (page - 1) * pageSize;

        // 검색 조건 및 키워드를 위한 맵 생성
        HashMap<String, Object> map = new HashMap<>();
        map.put("searchKeyword", searchKeyword);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        // 총 여행 계획 수 조회
        int totalCount = travelInfoService.getTotalCount(map);  // 해당 서비스 메서드 구현 필요
        int totalPages = (int) Math.ceil((double) totalCount / pageSize);
        
        System.out.println("총 갯수 : " + totalCount + " // 총 페이지 수 : " +  totalPages);

        // 현재 페이지가 유효한지 확인
        if (page < 1) {
            page = 1; // 페이지는 1보다 작을 수 없음
        } else if (page > totalPages) {
            page = totalPages; // 페이지가 총 페이지 수보다 클 수 없음
        }

        // 여행 계획 목록 조회
        List<TravelInfoVO> travelInfoList = travelInfoService.getAllTravelInfo(map);

        // 모델에 여행 계획 목록 및 페이지 정보 추가
        m.addAttribute("travelInfoList", travelInfoList);
        m.addAttribute("searchCondition", searchCondition);
        m.addAttribute("searchKeyword", searchKeyword);
        m.addAttribute("currentPage", page);
        m.addAttribute("totalPages", totalPages);

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

    @GetMapping("/plan/filterTravel")
    public ResponseEntity<Map<String, Object>> filterTravel(
            @RequestParam String filterType,
            @RequestParam String value,
            @RequestParam(defaultValue = "1") int page) {

        int pageSize = 6; // 페이지당 여행 계획 수
        int offset = (page - 1) * pageSize;

        HashMap<String, Object> map = new HashMap<>();
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        Map<String, Object> response = new HashMap<>();
        List<TravelInfoVO> travelInfoList;
        int totalPages;

        if ("style".equals(filterType)) {
            map.put("style", value);
            travelInfoList = travelInfoService.filterByStyle(map);
            int totalCount = travelInfoService.getTotalCountForStyle(value);
            totalPages = (int) Math.ceil((double) totalCount / pageSize);
        } else if ("who".equals(filterType)) {
            map.put("who", value);
            travelInfoList = travelInfoService.filterByWho(map);
            int totalCount = travelInfoService.getTotalCountForWho(value);
            totalPages = (int) Math.ceil((double) totalCount / pageSize);
        } else {
            return ResponseEntity.badRequest().build();
        }

        response.put("travelInfoList", travelInfoList);
        response.put("currentPage", page);
        response.put("totalPages", totalPages);

        return ResponseEntity.ok(response);
    }

}

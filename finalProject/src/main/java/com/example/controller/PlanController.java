package com.example.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.PlanVO;
import com.example.service.PlanService;

@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	  
	
	// 선택한 장소의 id값 가져오기
	@PostMapping("/insertPlan")
    @ResponseBody
    public List<PlanVO> insertPlan(@RequestParam("day") int day, @RequestParam(value="data[]") List<Integer> data) {
        System.out.println("insertPlan 신호 for Day " + day);
        List<PlanVO> result = planService.insertPlan(day, data);
        System.out.println(result);
        return result;
    }
    
    @RequestMapping("/plan/planPopup")
    public String selectAttrList(Model m) {
        System.out.println("planPopup 신호");
        
        List<PlanVO> result = planService.selectAttrList();
        m.addAttribute("attrList", result);
        return "plan/planPopup";
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// calendar -> plan 이동 
	// plan/plan 페이지에 선택한 날짜 출력 및 선택한 일자 수 만큼 일정 생성칸 추가
	@PostMapping("/calendar/plan")
	public String sendDates(@RequestParam("dates") String dates, RedirectAttributes redirectAttributes) {
		List<String> dateList = Arrays.asList(dates.split(","));
		System.out.println(dateList);
		
		try {
			redirectAttributes.addFlashAttribute("dates", dateList);
			
			// 리스트의 마지막 값 추출
            String lastDate = dateList.get(dateList.size() - 1);
			redirectAttributes.addFlashAttribute("lastDate", lastDate);
		} catch (Exception e) {
			System.out.println("예외 : " + e);
		}
		
		return "redirect:/plan/plan";
	}
	
	
	// plan 이동 
	@RequestMapping("plan/plan")
	public String plan(Model m) {
		List<String> dates = (List<String>) m.getAttribute("dates");
	    if (dates != null) {
	        int totalPages = (int) Math.ceil(dates.size() / 3.0);
	        m.addAttribute("totalPages", totalPages);
	    }
		return "plan/plan";
	}
} 

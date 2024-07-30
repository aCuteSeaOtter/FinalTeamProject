package com.example.controller;

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
import com.example.domain.TravelInfoVO;
import com.example.service.PlanService;

@Controller
public class PlanController {
	
	@Autowired
	private PlanService planService;
	  
	
	/* /plan/planPopup 선택한 장소의 id값 가져오기 */
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

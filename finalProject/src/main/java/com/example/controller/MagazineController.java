package com.example.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.MagazineVO;
import com.example.service.MagazineService;

//import com.example.domain.MagazineVO;
//import com.example.service.MagazineService;

@Controller
@RequestMapping("/magazine")
public class MagazineController {

	@Autowired
	private MagazineService magazineService;
   
	@RequestMapping("/magazineList")
	public String magazineList(Model m,
	                           @RequestParam(required = false) String searchKeyword,
	                           @RequestParam(required = false) String area,
	                           @RequestParam(defaultValue = "1") int page) {

	    int pageSize = 10; // 페이지당 매거진 수

	    // 페이지와 페이지당 데이터 수를 이용해 offset 계산
	    int offset = (page - 1) * pageSize;

	    // 검색 조건 및 키워드를 위한 맵 생성
	    HashMap<String, Object> map = new HashMap<>();
	    map.put("searchKeyword", searchKeyword);
	    map.put("area", area); // 지역 선택 검색
	    map.put("offset", offset);
	    map.put("pageSize", pageSize);

	    // 총 매거진 수 조회 (검색 조건이 있을 때와 없을 때 처리)
	    int totalCount = magazineService.getTotalCount(map);
	    int totalPages = (int) Math.ceil((double) totalCount / pageSize);

	    // 현재 페이지가 유효한지 확인
	    if (page < 1) {
	        page = 1; // 페이지는 1보다 작을 수 없음
	    } else if (page > totalPages) {
	        page = totalPages; // 페이지가 총 페이지 수보다 클 수 없음
	    }

	    // 매거진 목록 조회
	    List<MagazineVO> list = magazineService.getMagazineList(map, page, pageSize);

	    // 모델에 매거진 목록 및 페이지 정보 추가
	    m.addAttribute("magazineList", list);
	    m.addAttribute("searchKeyword", searchKeyword);
	    m.addAttribute("area", area);
	    m.addAttribute("currentPage", page);
	    m.addAttribute("totalPages", totalPages);

	    return "magazine/magazineList"; // JSP 파일 경로와 일치해야 함
	}



}

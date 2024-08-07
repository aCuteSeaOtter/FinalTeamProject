package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.LocalVO;
import com.example.service.LocalService;

@Controller
public class LocalController {

	@Autowired
	private LocalService localService;


	@RequestMapping("/")
	public String getLocalList(Model m) {
		System.out.println("첫페이지");
		List<LocalVO>localList = localService.getAllLocals(null);
		m.addAttribute("localList", localList);
		
		return "index";

	}
	
	@GetMapping("/location")
		public String getLocation(Model m) {
		List<LocalVO>localList = localService.getAllLocals(null);
		System.out.println("컨트롤러: " + localList.size());
		m.addAttribute("locations", localList);
		return "index";
	}
	
/*	@GetMapping("/popup")
	public String popUp(Model m) {
		LocalVO localVO = new LocalVO();
		localVO.setLocal_name_eng("local_name_eng");
		localVO.setLocal_name_kor("local_name_kor");
		localVO.setLocal_image("local_image");
		localVO.setLocal_content("local_content");
		
		m.addAttribute("localVO", localVO);

		
			return "index";
	}*/
}

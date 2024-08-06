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


	/*@RequestMapping("/index")
	public String getLocalList(Model m) {
		List<LocalVO>localList = localService.getAllLocals();
		System.out.println(localList);
		m.addAttribute("localList", localList);
		
		return "index";

}*/

	 
	@GetMapping("/location")
public String getLocation(Model m) {
		List<LocalVO>localList = localService.getAllLocals();
		m.addAttribute("localList", localList);
		return "index";
	}
}

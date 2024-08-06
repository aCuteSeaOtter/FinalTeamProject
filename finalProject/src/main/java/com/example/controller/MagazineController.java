package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
   public String magazineList(Model m) {
   
	   List<MagazineVO> list = magazineService.selectMagazineList();

	   m.addAttribute("magazineList", list);
      
      return "magazine/magazineList";
   }
}

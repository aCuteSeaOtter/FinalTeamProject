package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.LocalVO;
import com.example.domain.LoginVO;
import com.example.service.LocalService;

@Controller
public class LocalController {
 
   @Autowired
   private LocalService localService;


   @RequestMapping("/")  
   public String getLocalList(Model m, LocalVO localVO) {
   //   System.out.println("/ 첫페이지");
      List<LocalVO>localList = localService.getAllLocals(localVO);
      for(LocalVO vo:localList) {
   //  	 System.out.println("Local Content: "+vo.getLocal_content());
      }
      m.addAttribute("localList", localList);
      return "index";
}
   

   @GetMapping("/location")
   public String getLoc(Model m,LocalVO localVO) {
      try {
         List<LocalVO>localList = localService.getAllLocals(localVO);
         System.out.println("컨트롤러: " + localList.size());

         m.addAttribute("localList", localList);
         }catch(Exception ex){
         ex.printStackTrace();
      }
      return "index";
   }
   
      
}

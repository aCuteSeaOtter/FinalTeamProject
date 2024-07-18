package com.example.controller;

import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.ZoneId;

import java.util.Date;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.Member2VO;
import com.example.service.MemberService;

import jakarta.servlet.http.HttpSession;



@Controller
@SessionAttributes("mem")
public class loginController {
	static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	@Autowired
	private MemberService memberService;
	
	
	
//	@RequestMapping("/{step}")
//	// @PathVariable : 경로변수
//	public String viewPage(@PathVariable String step) {
//		logger.info(step + "경로 들어옴");
//		return step;
//	}

	@RequestMapping("/index")
	public void index(){
		
	}

	
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	
	@RequestMapping("/updateForm")
	public String updateForm() {
		return "updateForm";
		
	}
	
	@RequestMapping("/deleteForm")
	public String deleteForm() {
		return "index";
		
	}
	//회원가입 화면 요청 처리
	@RequestMapping("/registForm")
	public void contact() {
		
	}
	
	
	//회원가입 요청 처리
	@RequestMapping("/regist")
	public String registMember(@ModelAttribute("member2VO") Member2VO member2VO, 
							@RequestParam("year")@DateTimeFormat(pattern="yyyy") int year,
                            @RequestParam("month") @DateTimeFormat(pattern="MM") int month,
                            @RequestParam("day") @DateTimeFormat(pattern="dd") int day)
				
	{
		
		System.out.println("~~~~~~~~ ");
		
	//날짜 유효성 검사
	if(!isValidDate(year,month,day)) {
		//유효하지 않은 날짜 처리 로직
		String errorMessage = "유효하지 않은 날짜입니다";
		throw new IllegalArgumentException(errorMessage);
	}
	//LocalDate를 Date로 바꾸기
	LocalDate localdate = LocalDate.of(year, month, month);
	Date memberbirth= Date.from(localdate.atStartOfDay(ZoneId.systemDefault()).toInstant());
    //Date regDate = Date.from(memberRegDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
	member2VO.setMemberbirth(memberbirth);
	//member2VO.setMemberregdate(regDate);	
	System.out.println("Member2VO:"+member2VO);
	
		//회원 등록 서비스 호출
		memberService.registForm(member2VO);
	
		return "loginForm";
		
	}	
	

	
	
	// 로그인을 위해 아이디와 비밀번호를 입력하고 로그인 버튼을 눌렸을 때
	@PostMapping("/loginsuccess")
	public String checkLogin(Member2VO member2VO, Model m, HttpSession session)
	{
		
		
		Member2VO member = (Member2VO)session.getAttribute("session");
		System.out.println("이메일:"+member2VO.getMemberemail());
		System.out.println("비밀번호:" + member2VO.getMemberpass());
		System.out.println("닉네임: " + member2VO.getMembernickname());
		System.out.println("성별: " + member2VO.getMembergender());
		System.out.println("생일: " + member2VO.getMemberbirth());
		Member2VO result = memberService.loginForm(member2VO);
		System.out.println("결과" + result);
		
		
		if(result!=null) {
			//뷰페이지에 데이터 전송 전송
			m.addAttribute("mem", result);
			//세션에 저장(모든 뷰페이지에서 데이터 얻기)
			session.setAttribute("sess", result);

			return "loginsuccess";
		}else {
			  
			return "loginForm";
		}
	}	 
		
	@RequestMapping("/savecontact")
	public String savecontact(@Valid  Member2VO member2VO, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "contact";
		}
			
		System.out.println(member2VO);
		memberService.savecontact(member2VO);
		return "redirect:/index";
}
	

	private boolean isValidDate(int year, int month, int day) {
        try {
            LocalDate.of(year, month, day);
            return true;
        } catch (DateTimeException e) {
            return false;
        }
    }


}


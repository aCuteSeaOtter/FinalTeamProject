package com.example.controller;


import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.ZoneId;

import java.util.Date;


import javax.validation.Valid;

import org.apache.http.HttpStatus;
import org.hibernate.internal.build.AllowSysOut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.neo4j.Neo4jProperties.Authentication;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.LoginVO;
import com.example.service.LoginService;


import io.micrometer.common.util.StringUtils;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@SessionAttributes("mem")
@RequestMapping("/login")

public class LoginController {
	static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	@Autowired
	private LoginService loginService;



	@RequestMapping("/loginMain")
	public void loginMain(){
		
	} 
	@RequestMapping("/updateForm")
	public String updateForm() {
		return "updateForm";
		
	} 
	
	@RequestMapping("/deleteForm")
	public String deleteForm() {
		return "/";
		
	}
	//회원가입 화면 요청 처리
	@RequestMapping("/registForm")
	public void registForm() {
		
	}
	//비밀번호찾기
	@RequestMapping("/findpass")
	public void findpass() {
			}
	
	@RequestMapping("/loginForm")
	public void loginForm() {
		
		
		
	}
	@RequestMapping("/agreeForm")
	public void agreeForm() {

	}

	// 회원가입 요청
	@RequestMapping("/regist")
	public String registMember(@ModelAttribute("member2VO") LoginVO loginVO, 
	                            @RequestParam("year")  int year,
	                            @RequestParam("month") int month,
	                            @RequestParam("day")  int day
	                          ) {
	    
		System.out.println("/regiest 컨트럴로"+ loginVO.toString());
		
		
	 /*   if (bindingResult.hasErrors()) {
	        return "registForm"; // 에러 발생 시 다시 폼 페이지로 이동
	    }*/

	    // 날짜 유효성 검사
	    if (!isValidDate(year, month, day)) {
	        String errorMessage = "유효하지 않은 날짜입니다";
	        throw new IllegalArgumentException(errorMessage);
	    }

	    // LocalDate를 Date로 변환
	    LocalDate localdate = LocalDate.of(year, month, day);
	    Date memberbirth = Date.from(localdate.atStartOfDay(ZoneId.systemDefault()).toInstant());

	    System.out.println("서비스전");
	    
	    // loginVO에 member_birth 설정
	    loginVO.setMember_birth(memberbirth);
	    // 회원 등록 서비스 호출??????????????
	    loginService.registForm(loginVO);
	    
	    System.out.println("서비스후");
	    
	    return "/loginForm"; // 등록 완료 후 로그인 폼 페이지로 이동
	}

	// 로그인을 위해 아이디와 비밀번호를 입력하고 로그인 버튼을 눌렸을 때
	@PostMapping("/") //logincheck
	public String checkLogin(LoginVO loginVO, HttpSession session)
	{
		LoginVO result = loginService.checkLogin(loginVO);
		if(result!=null) {
			//로그인 성공 시 세션에 사용자 정보 저장
			session.setAttribute("mem", result);
			System.out.println("--------------------------------------");
			System.out.println("if: " + result);
			return "redirect:/"; // index였음
		}
		else {
			return "redirect:/loginForm"; // 로그인창 뷰페이지 지정
		}
	}

	//로그아웃
	@RequestMapping("/logout")

	public  String logout( HttpSession session) {
		System.out.println("logout");
		session.removeAttribute("mem");
		session.invalidate();
	   
	  return "redirect:/";
	}

		
	//마이페이지 ( 예시 )
	@RequestMapping("/mypage")
	public String myPage(HttpSession session) {
	    LoginVO mem = (LoginVO) session.getAttribute("mem");
	    if (mem != null) {
	        // 사용자 정보를 세션에서 가져오고 페이지를 보여줍니다.
	        return "mypage";
	    } else {
	        // 비로그인 상태일 때 로그인 페이지로 리디렉션
	        return "redirect:/loginForm";
	    }
	}
	
		//홈
//    @RequestMapping("/")
//    public String home() {
//        return "/";
//}

	
	
	@RequestMapping("/savecontact")
	public String savecontact(@Valid  LoginVO loginVO, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "contact";
}
			
		System.out.println(loginVO);
		loginService.savecontact(loginVO);
		return "/";
}
	

	private boolean isValidDate(int year, int month, int day) {
        try {
            LocalDate.of(year, month, day);
            return true;
        } catch (DateTimeException e) {
            return false;
        }
    }
	
	
	// kakaoLogin
	// 카카오 로그인 기능이 처리되는 페이지
	@RequestMapping("/loginForm/getKakaoAuthURl")
	public @ResponseBody String getKakaoAuthUrl(HttpServletRequest request) throws Exception{
		String reqUrl=
				 "https://kauth.kakao.com/oauth/authorize?client_id=93f73b822defadc4b387046b57697917&redirect_uri=	"
				 + "http://localhost:8081/login/oauth2/code/kakao&response_type=code";
	return reqUrl;
	}
	
	
}//end of class




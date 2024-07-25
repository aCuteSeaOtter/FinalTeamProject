package com.example.controller;

import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.ZoneId;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.domain.LoginVO;
import com.example.service.LoginService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
@SessionAttributes("mem")
@RequestMapping("/login")
public class LoginController {
	static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	
	/*
	 * @RequestMapping("/{step}") // @PathVariable : 경로변수 public String
	 * viewPage(@PathVariable String step) { logger.info(step + "경로 들어옴"); return
	 * step; }
	 */

	@RequestMapping("/loginMain")
	public void loginMain(){
		
	}

	
	@RequestMapping("/contact")
	public void tact() {
		
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
		return "main";
		
	}
	//회원가입 화면 요청 처리
	@RequestMapping("/registForm")
	public void registForm() {
		
	}
	//비밀번호찾기
	@RequestMapping("/findpass")
	public String findpass() {
		return "findpass";
	}
	
	@RequestMapping("/loginForm")
	public void loginForm() {

		
	}
	@RequestMapping("/agreeForm")
	public void agreeForm() {

		
	}

	@RequestMapping("/main")
	public String main() {
			return "/main";
	}

	@RequestMapping("/loginsuccess")
	public void loginsuccess(){}
	
	
	
	//회원가입 요청 처리
//	@RequestMapping("/regist")
//	public String registMember(@ModelAttribute("member2VO") @Valid MemberVO member2VO, 
//							@RequestParam("year")@DateTimeFormat(pattern="yyyy") int year,
//                            @RequestParam("month") @DateTimeFormat(pattern="MM") int month,
//                            @RequestParam("day") @DateTimeFormat(pattern="dd") int day,
//                            BindingResult bindingResult)
//				
//	{
//		
//		if(bindingResult.hasErrors()) {
//			 return "registForm";
//		}
//		System.out.println("~~~~~~~~ ");
//		
//	//날짜 유효성 검사
//	if(!isValidDate(year,month,day)) {
//		//유효하지 않은 날짜 처리 로직
//		String errorMessage = "유효하지 않은 날짜입니다";
//		throw new IllegalArgumentException(errorMessage);
//	}
//	//LocalDate를 Date로 바꾸기
//	LocalDate localdate = LocalDate.of(year, month, month);
//	Date membeBirth= Date.from(localdate.atStartOfDay(ZoneId.systemDefault()).toInstant());
//  
//	member2VO.setMemberBirth(memberBirth);
//	
//	System.out.println("Member2VO:"+member2VO);
//	
//		//회원 등록 서비스 호출
//		memberService.registForm(member2VO);
//	
//		return "loginForm";
//		
//	}	
//	
		
	@RequestMapping("/regist")
	public String registMember(@ModelAttribute("member2VO") LoginVO member2VO, 
	                            @RequestParam("year") @DateTimeFormat(pattern="yyyy") int year,
	                            @RequestParam("month") @DateTimeFormat(pattern="MM") int month,
	                            @RequestParam("day") @DateTimeFormat(pattern="dd") int day,
	                            BindingResult bindingResult) {
	    
	    if (bindingResult.hasErrors()) {
	        return "registForm"; // 에러 발생 시 다시 폼 페이지로 이동
	    }

	    // 날짜 유효성 검사
	    if (!isValidDate(year, month, day)) {
	        String errorMessage = "유효하지 않은 날짜입니다";
	        throw new IllegalArgumentException(errorMessage);
	    }

	    // LocalDate를 Date로 변환
	    LocalDate localdate = LocalDate.of(year, month, day);
	    Date memberBirth = Date.from(localdate.atStartOfDay(ZoneId.systemDefault()).toInstant());

	    // MemberVO에 설정
	    // member2VO.(memberBirth);
	    
	    // 회원 등록 서비스 호출

	    return "loginForm"; // 등록 완료 후 로그인 폼 페이지로 이동
	}

	
	// 로그인을 위해 아이디와 비밀번호를 입력하고 로그인 버튼을 눌렸을 때
	@PostMapping("/loginMain.jsp")
	public String checkLogin(LoginVO memVO, HttpSession session)
	{
		LoginVO result = loginService.checkLogin(memVO);
	
		if(result!=null) {
			//로그인 성공 시 세션에 사용자 정보 저장
			session.setAttribute("mem", result);
			
			return "loginMain";
		}
		else {
			return "loginForm";
		}
	}
	
		
	// 카카오 로그인 기능이 처리되는 페이지
	@RequestMapping("/loginForm/getKakaoAuthURl")
	public @ResponseBody String getKakaoAuthUrl(HttpServletRequest request) throws Exception{
		String reqUrl=
				 "https://kauth.kakao.com/oauth/authorize?client_id=93f73b822defadc4b387046b57697917&redirect_uri=	"
				 + "http://localhost:8081/login/oauth2/code/kakao&response_type=code";
	
	
		return reqUrl;
	}


    @GetMapping("/oauth2/code/kakao") // GET 요청을 처리하는 URL
    public String handleKakaoCallback(@RequestParam("code") String code, HttpSession session, RedirectAttributes rttr,
    								Model m) {
        
       	try {
            // 카카오에서 제공하는 사용자 정보 요청 메서드 호출
            String accessToken = loginService.getAccessToken(code);
            String userInfo = loginService.getUserInfo(accessToken, session, rttr);
            
            //사용자 정보를 모델에 추가하여 화면에 전달
            m.addAttribute("mem", userInfo);
            
            //DB에 저장
            loginService.saveKakaoMember(accessToken, userInfo);
            
            return "redirect:/loginMain"; // 로그인 성공 후 메인 페이지로 리다이렉트
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/loginForm"; // 예외 발생 시 에러 페이지로 리다이렉트
        }
    }
		
	@RequestMapping("/savecontact")
	public String savecontact(@Valid  LoginVO loginVO, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "contact";
		}
			
		System.out.println(loginVO);
		loginService.savecontact(loginVO);
		return "redirect:/main";
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

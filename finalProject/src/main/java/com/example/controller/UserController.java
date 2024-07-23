package com.example.controller;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.UserVO;
import com.example.service.UserService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller
@RequestMapping("/member")
@SessionAttributes("mem")
public class UserController {
   
   static final Logger logger = LoggerFactory.getLogger(UserController.class);
   
   @Autowired
   private UserService memberService;
   
   // 회원 목록보기
   @RequestMapping("/registList")
   public void getMemberList(Model m) {
      UserVO vo = new UserVO();
      List<UserVO> list = memberService.getMemberList(vo);
      m.addAttribute("memberList",list);
   }
   
   // 회원가입 버튼 클릭 시 회원가입 창으로 이동
   @RequestMapping("/registForm")
   public void registForm() {
      
   }
   
   // 완료 버튼 클릭 시 고객의 정보 저장
    @RequestMapping("/saveMember")
    public String saveMember(UserVO vo, HttpServletResponse response) throws IOException {
       System.out.println(vo.toString());
        // 입력 값 체크
        if (vo == null || vo.getMember_email() == null || vo.getMember_email().trim().isEmpty() ||
            vo.getMember_pass() == null || vo.getMember_pass().trim().isEmpty() ||
            vo.getMember_nickname() == null || vo.getMember_nickname().trim().isEmpty()) {

            PopUp.popUpMove(response, "아이디, 비밀번호, 이름은 필수 입력 항목입니다.", "/member/registForm");
            return null; // 팝업 후 리다이렉트, 뷰 리졸버를 사용하지 않음
        }

        // 입력 값이 유효한 경우 회원 정보 저장
        memberService.insertMember(vo);
        PopUp.popUpMove(response, "회원가입이 완료되었습니다. 환영합니다.", "/member/login");
        return null; // 팝업 후 리다이렉트
    }
   
   // 사용자 아이디 클릭 시 상세보기로 이동
   @RequestMapping("/regist")
   public void getRegist(UserVO vo, Model m) {
      UserVO result = memberService.getMember(vo);
      m.addAttribute("member",result);
   }
   
   // 회원정보 수정
   @RequestMapping("/updateMember")
   public String updateMember(UserVO vo) {
      memberService.updateMember(vo);
      
      return "redirect:/member/registList";
   }
   
   // 회원정보 삭제
   @RequestMapping("/deleteMember")
   public String deleteMember(UserVO vo) {
      memberService.deleteMember(vo);
      
      return "redirect:/member/registList";
   }
   
   @RequestMapping("/login")
   public void login(UserVO vo) {
      
   }
   
   @RequestMapping("/logout")
    public String logout(HttpSession session, UserVO vo) {
        session.invalidate(); // 세션 무효화
        System.out.println(vo.toString());
        return "member/login"; // 로그아웃 후 로그인 페이지로 리다이렉트
    }
   
   @PostMapping("/checkLogin")
   public String checkLogin(UserVO vo, Model m, HttpSession session, HttpServletResponse response) throws IOException {
       System.out.println("화면에서 넘어온 값:" + vo);

       // vo가 null이거나 필드 값이 공백인지 체크
       if (vo == null || vo.getMember_email() == null || vo.getMember_email().trim().isEmpty() || 
           vo.getMember_pass() == null || vo.getMember_pass().trim().isEmpty()) {
           PopUp.popUp(response, "아이디와 비밀번호를 입력해주세요.");
           return "member/login"; // 리턴을 null로 하여 직접 팝업에서 리다이렉트하도록 함
       }

       UserVO result = memberService.checkLogin(vo);
       System.out.println("결과:" + result);

       // result가 null이거나 필드 값이 공백인지 체크
       if (result == null || result.getMember_email() == null || result.getMember_email().trim().isEmpty()) {
           PopUp.popUp(response, "아이디 또는 비밀번호가 잘못 되었습니다.");
           return "member/login"; // 리턴을 null로 하여 직접 팝업에서 리다이렉트하도록 함
       }

       // 뷰페이지에 데이터 전송 
       m.addAttribute("mem", result);

       // 세션에 저장
       session.setAttribute("sess", vo.getMember_email());
       session.setAttribute("member", result);
       session.setAttribute("nickname", result.getMember_nickname());  // 이 부분이 문제일 수 있습니다.
       System.out.println("세션에 nickname 저장: " + session.getAttribute("nickname"));  // 확인용

       
       return "redirect:/review/getReviewList";
   }

}

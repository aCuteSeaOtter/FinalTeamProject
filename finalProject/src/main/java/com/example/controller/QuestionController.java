package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.QuestionVO;
import com.example.domain.UserVO;
import com.example.service.QuestionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller
@RequestMapping("/question")
public class QuestionController {

	@Autowired
	private QuestionService questionService;
	
	// 문의글 출력 및 검색
	@RequestMapping("/questionList")
	public void questionList() {
		
	}
	
	// 문의글 작성 페이지 이동
	@RequestMapping("questionWrite")
	public String insertQuestion(Model m, HttpSession session,
								HttpServletResponse response) {
		// 세션에서 사용자 닉네임 가져오기
	    UserVO member = (UserVO) session.getAttribute("member");
	    String id = (String) session.getAttribute("sess");
	    
	    if (member != null) {
	           String nickname = member.getMember_nickname();
	           m.addAttribute("nickname", nickname);
	           System.out.println("문의 페이지에서 가져온 값:" + id);
	           return "question/questionWrite"; 
	       } else {
	           System.out.println("닉네임이 null입니다. 세션에 닉네임이 설정되지 않았습니다.");
	           PopUp.popUpMove(response, "로그인 후 이용 바랍니다.", "/question/questionList");
	           return null;  // 팝업을 띄우고 리다이렉트가 처리되므로 null 반환
	       }
	   }
	
	// 문의글 작성 후 저장
	@RequestMapping("saveQuestion")
    public String saveQuestion(HttpServletRequest request, HttpSession session,
                               QuestionVO vo, String qPassword,
                               Model m, HttpServletResponse response) {
        
        // 세션에서 사용자 정보 가져오기
        UserVO member = (UserVO) session.getAttribute("member");
        
        if (member != null) {
            String member_email = member.getMember_email();
            // QuestionVO에 사용자 이메일 설정
            vo.setMember_email(member_email);  

            // 사용자가 입력한 비밀글 비밀번호 가져오기
            String que_secret = request.getParameter("que_secret"); 
            vo.setQue_secret(que_secret);  // QuestionVO에 비밀글 비밀번호 설정

            questionService.insertQuestion(vo);

            return "redirect:/question/questionList";
        } else {
            // 회원 정보가 세션에 없을 경우 로그인 페이지로 리다이렉트
            return "redirect:user/login";
        }
    }
}

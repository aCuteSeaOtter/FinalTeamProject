package com.example.controller;

import java.util.HashMap;
import java.util.List;

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
	
	// 문의글 검색 및 목록 출력
	@RequestMapping("questionList")
	public String questionList(HttpServletResponse response, Model m,
							   String searchCondition, String searchKeyword,
							   HttpSession session) {
		String id = (String) session.getAttribute("sess");
		String nickname = (String) session.getAttribute("nickname");
		
		HashMap<String, Object>map = new HashMap<>();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		List<QuestionVO> list = questionService.questionList(map);
		System.out.println(list);
		m.addAttribute("question", list);
		m.addAttribute("searchCondition",searchCondition);
		m.addAttribute("searchKeyword",searchKeyword);

		return "question/questionList";
	}
	
	@RequestMapping("selectQuestion")
	public String selectQuestion(QuestionVO vo, Model m, HttpSession session) {
		QuestionVO result = questionService.selectQuestion(vo);
		String id = (String) session.getAttribute("sess");
		m.addAttribute("id", id);
		m.addAttribute("question", result);
		
		return "question/selectQuestion";
	}
	
	@RequestMapping("updateQuestion")
	public String updateQuestion(QuestionVO vo) {
		questionService.updateQuestion(vo);
		return "redirect:questionList";
	}
	
	@RequestMapping("deleteQuestion")
	public String deleteQuestion(QuestionVO vo, Model m, HttpSession session) {
		questionService.deleteQuestion(vo);
		String id = (String) session.getAttribute("sess");
		m.addAttribute("id", id);
		return "redirect:questionList";
	}
	
	// 사용자의 문의글 비밀글 여부
	@RequestMapping("checkSecretPassword")
	public String checkSecretPassword(QuestionVO vo, Model m, HttpSession session) {
		QuestionVO result = questionService.selectQuestion(vo);
		String id = (String) session.getAttribute("logid");
		m.addAttribute("id", id);
		m.addAttribute("question", result);
		return "question/checkQSecret";
	}
}


package com.example.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.AnswerVO;
import com.example.domain.LoginVO;
import com.example.domain.QuestionVO;
import com.example.service.AnswerService;
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
	
	@Autowired
    private AnswerService answerService;
	
	// 문의글 작성 페이지 이동
	@RequestMapping("questionWrite")
	public String insertQuestion(Model m, HttpSession session,
								HttpServletResponse response) {
		// 세션에서 사용자 닉네임 가져오기
		LoginVO member = (LoginVO) session.getAttribute("member");
	    String id = (String) session.getAttribute("sess");
	    
	    if (member != null) {
	           String nickname = member.getMember_nickname();
	           m.addAttribute("nickname", nickname);
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
                               Model m, HttpServletResponse response) throws IOException {
        
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // 세션에서 사용자 정보 가져오기
        LoginVO member = (LoginVO) session.getAttribute("member");
        
        if (member != null) {
            String member_email = member.getMember_email();
            // QuestionVO에 사용자 이메일 설정
            vo.setMember_email(member_email);  

            // 사용자가 입력한 비밀글 비밀번호 가져오기
            String que_secret = request.getParameter("que_secret"); 
            vo.setQue_secret(que_secret);  // QuestionVO에 비밀글 비밀번호 설정

            // 입력 값 검증
            if (vo.getQue_title() == null || vo.getQue_title().isEmpty()) {
                out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
                out.flush();
                return null;
            }

            if (vo.getQue_content() == null || vo.getQue_content().isEmpty()) {
                out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
                out.flush();
                return null;
            }
            
            questionService.insertQuestion(vo);
            out.println("<script>alert('작성이 완료되었습니다.'); location.href='/question/questionList';</script>");
            out.flush();
            return null;
        } else {
            // 회원 정보가 세션에 없을 경우 로그인 페이지로 리다이렉트
            return "redirect:login/loginForm";
        }
    }
	
	// 문의글 검색 및 목록 출력
    @RequestMapping("questionList")
    public String questionList(HttpServletResponse response, Model m,
                               @RequestParam(required = false) String searchCondition,
                               @RequestParam(required = false) String searchKeyword,
                               @RequestParam(defaultValue = "1") int page,
                               HttpSession session) {
        String id = (String) session.getAttribute("sess");

        int pageSize = 10; // 페이지당 문의글 수
        int offset = (page - 1) * pageSize; // 오프셋 계산

        // 검색 조건 및 키워드를 위한 맵 생성
        HashMap<String, Object> map = new HashMap<>();
        map.put("searchCondition", searchCondition);
        map.put("searchKeyword", searchKeyword);
        map.put("offset", offset);
        map.put("pageSize", pageSize);

        // 총 문의글 수 조회
        int totalCount = questionService.getTotalCount(map);
        int totalPages = (int) Math.ceil((double) totalCount / pageSize);

        // 현재 페이지가 유효한지 확인
        if (page < 1) {
            page = 1; // 페이지는 1보다 작을 수 없음
        } else if (page > totalPages) {
            page = totalPages; // 페이지가 총 페이지 수보다 클 수 없음
        }

        // 문의글 목록 조회
        List<QuestionVO> list = questionService.questionList(map);

        // 모델에 문의글 목록 및 페이지 정보 추가
        m.addAttribute("question", list);
        m.addAttribute("searchCondition", searchCondition);
        m.addAttribute("searchKeyword", searchKeyword);
        m.addAttribute("currentPage", page);
        m.addAttribute("totalPages", totalPages);

        return "question/questionList";
    }

	// 문의글 상세보기
	@RequestMapping("selectQuestion")
	public String selectQuestion(QuestionVO qvo, Model m, HttpSession session,
								 AnswerVO avo) {
		HashMap<String, Object> question = questionService.selectQuestion(qvo);
		AnswerVO answer = answerService.selectAnswer(avo);
		String id = (String) session.getAttribute("sess");
		m.addAttribute("id", id);
		m.addAttribute("question", question);
		m.addAttribute("answer", answer);
		
		return "question/selectQuestion";
	}
	
	// 문의글 수정
	@RequestMapping("updateQuestion")
	public void updateQuestion(QuestionVO vo, HttpServletResponse response, 
	                          @RequestParam("originalTitle") String originalTitle, 
	                          @RequestParam("originalContent") String originalContent) throws IOException {
	    
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    // 유효성 검사를 통해 필드가 비어 있는지 확인
	    if (vo.getQue_title() == null || vo.getQue_title().trim().isEmpty()) {
	        out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    
	    // 유효성 검사를 통해 필드가 비어 있는지 확인
	    if (vo.getQue_content() == null || vo.getQue_content().trim().isEmpty()) {
	        out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    
	    // 기존 값과 새로운 값 비교
	    boolean isTitleChanged = !vo.getQue_title().equals(originalTitle);
	    boolean isContentChanged = !vo.getQue_content().equals(originalContent);

	    if (!isTitleChanged && !isContentChanged) {
	        out.println("<script>alert('수정하지 않았습니다.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    
	    questionService.updateQuestion(vo);
	    out.println("<script>alert('수정되었습니다.'); location.href='questionList';</script>");
	    out.flush();
	}

	// 문의글 삭제
	@RequestMapping("deleteQuestion")
	public void deleteQuestion(QuestionVO vo, HttpServletResponse response) throws IOException {
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    
	    questionService.deleteQuestion(vo);
	    
	    out.println("<script>alert('삭제되었습니다.'); location.href='questionList';</script>");
	    out.flush();
	}

	
	// 사용자의 문의글 비밀글 여부
	@RequestMapping("checkSecretPassword")
	public String checkSecretPassword(QuestionVO vo, Model m, HttpSession session) {
		HashMap<String, Object> result = questionService.selectQuestion(vo);
		String id = (String) session.getAttribute("sess");
		m.addAttribute("id", id);
		m.addAttribute("question", result);
		return "question/checkSecretPassword";
	}
}


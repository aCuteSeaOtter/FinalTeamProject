package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.UserVO;
import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;
import com.example.service.UserService;
import com.example.service.ReviewService;
import com.example.util.MD5Generator;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller
@RequestMapping("/review")
public class ReviewController<SearchCriteria> {
   
   static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
   
   @Autowired
   private ReviewService reviewService;
   
   @Autowired
   private UserService userService;
   
   // 글 목록보기
   @RequestMapping("/reviewList")
   public void getReviewList(Model m, HttpSession session) {
      ReviewVO vo = new ReviewVO(); // 추후에 조건 검색하고자 필요
      List<ReviewVO> list = reviewService.getReviewList(vo);
      reviewService.incrementViewCount(vo);
      m.addAttribute("reviewList", list);
      System.out.println("-----------------------------");
      System.out.println(list);
      System.out.println("-----------------------------");
      String id = (String) session.getAttribute("sess");
   }
   
   @RequestMapping("/selectReview")
   public void getReview(@RequestParam int review_id, Model model, HttpSession session, ReviewVO vo) {
       vo.setReview_id(review_id);
       
       // 조회수 증가 함수
       reviewService.incrementViewCount(vo);
       
       // 상세보기의 정보
       HashMap result = reviewService.getReview(vo);
       System.out.println("상세보기의 값:" + result);
       model.addAttribute("review", result);
       
       // 세션에서 사용자 ID 가져오기, 사용자 nickname 가져오기
       String id = (String) session.getAttribute("sess");
       String nickname = (String) session.getAttribute("nickname");
       System.out.println("getReview 페이지 이동 시 세션에서 가져온 id값: " + id);  // 로그를 통해 id 값을 확인
       System.out.println("getReview 페이지 이동 시 세션에서 가져온 nickname값: " + nickname);  // 로그를 통해 nickname 값을 확인
       if (id != null) {
          model.addAttribute("id", id);
       } else {
           System.out.println("id값이 null입니다. 세션에 id가 설정되지 않았습니다.");
       }

       // reviewList를 모델에 추가
       List<ReviewVO> reviewList = reviewService.getReviewList(vo);
       model.addAttribute("reviewList", reviewList);
   }

   
   // 글쓰기
   @RequestMapping("/saveReview")
   public void insertReview(
           @RequestParam(value = "review_file", required = false) MultipartFile files,
           @RequestParam(value = "review_title", required = false) String reviewTitle,
           @RequestParam(value = "review_content", required = false) String reviewContent,
           @RequestParam(value = "review_star", required = false) String reviewStar,
           ReviewVO vo, HttpSession session, HttpServletResponse response) throws IOException {

	   response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    
	    if (files == null || files.isEmpty()) {
	        out.println("<script>alert('파일을 업로드해 주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    if (reviewTitle == null || reviewTitle.isEmpty()) {
	        out.println("<script>alert('제목을 입력해 주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    if (reviewContent == null || reviewContent.isEmpty()) {
	        out.println("<script>alert('내용을 입력해 주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }
	    if (reviewStar == null || reviewStar.isEmpty()) {
	        out.println("<script>alert('별점을 입력해 주세요.'); history.go(-1);</script>");
	        out.flush();
	        return;
	    }

       // 세션에서 사용자 이메일 가져오기
       String id = (String) session.getAttribute("sess");
       vo.setMember_email(id);

       try {
           // 파일 처리 로직
           if (files != null && !files.isEmpty()) {
               String originFilename = files.getOriginalFilename();
               String filename = new MD5Generator(originFilename).toString();
               String savepath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\files";
               
               if (!new File(savepath).exists()) {
                   new File(savepath).mkdir();
               }
               
               String filepath = savepath + "\\" + filename;
               files.transferTo(new File(filepath));
               
               ReviewFileVO reviewFileVO = new ReviewFileVO();
               reviewFileVO.setOrigin_file_name(originFilename);
               reviewFileVO.setFile_name(filename);
               reviewFileVO.setFile_path(filepath);
               
               // 파일을 첨부한 경우
               reviewService.insertReview(vo, reviewFileVO);
           } else {
               // 파일을 첨부하지 않은 경우
               reviewService.insertReview(vo, null);
           }
           
       } catch (Exception ex) {
           ex.printStackTrace();
       }
       
       response.sendRedirect("reviewList");
   }
   
   // 글 수정
   @RequestMapping("/updateReview")
   public String updateReview(ReviewVO vo) {
      reviewService.updateReview(vo);
      
      return "redirect:reviewList";
   }
   
   // 글 삭제
   @RequestMapping("/deleteReview")
   public String deleteReview(ReviewVO vo) {
      reviewService.deleteReview(vo);
      
      return "redirect:reviewList";
   }
   
   @RequestMapping("/insertReview")
   public String viewPage(Model m, HttpSession session, HttpServletResponse response) throws IOException {
       // 세션에서 사용자 닉네임 가져오기
       UserVO member = (UserVO) session.getAttribute("member");

       if (member != null) {
           String nickname = member.getMember_nickname();
           m.addAttribute("nickname", nickname);
           return "review/insertReview";  // insertReview.jsp 페이지로 이동
       } else {
           System.out.println("닉네임이 null입니다. 세션에 닉네임이 설정되지 않았습니다.");
           PopUp.popUpMove(response, "로그인 후 이용 바랍니다.", "/review/reviewList");
           return null;  // 팝업을 띄우고 리다이렉트가 처리되므로 null 반환
       }
   } 

   @RequestMapping("getReview")
   public void getReview() {
	   
   }
   
   @RequestMapping("getReviewList")
   public void getReviewList() {
	   
   }
}

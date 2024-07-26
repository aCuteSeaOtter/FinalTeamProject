package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;
import com.example.service.ReviewService;
import com.example.service.UserService;
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
       HashMap<String, Object> result = reviewService.getReview(vo);
       model.addAttribute("reviews", result.get("reviews"));
       model.addAttribute("review", result.get("reviewOne"));
       
       System.out.println("reviewcontroller에서 list"+result.get("reviewOne"));

       // 세션에서 사용자 ID 가져오기, 사용자 nickname 가져오기
       String id = (String) session.getAttribute("sess");
       String nickname = (String) session.getAttribute("nickname");
       if (id != null) {
           model.addAttribute("id", id);
       }

       // reviewList를 모델에 추가
       List<ReviewVO> reviewList = reviewService.getReviewList(vo);
       model.addAttribute("reviewList", reviewList);
   }

   
   // 글쓰기
   @RequestMapping("/saveReview")
   public String insertReview(
           @RequestParam(value = "review_file", required = false) List<MultipartFile> files,
           @RequestParam(value = "review_title", required = false) String reviewTitle,
           @RequestParam(value = "review_content", required = false) String reviewContent,
           @RequestParam(value = "review_star", required = false) String reviewStar,
           ReviewVO vo, HttpSession session, HttpServletResponse response) throws IOException {

	   response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    if (files == null || files.stream().allMatch(file -> file.isEmpty())) {
           out.println("<script>alert('파일을 업로드해 주세요.'); history.go(-1);</script>");
           out.flush();
           return null;
	       }

	    if (reviewTitle == null || reviewTitle.isEmpty()) {
	        out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return null;
	    }

	    if (reviewContent == null || reviewContent.isEmpty()) {
	        out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return null;
	    }

	    if (reviewStar == null || reviewStar.isEmpty()) {
	        out.println("<script>alert('별점을 입력해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return null;
	    }

       vo.setReview_title(reviewTitle);
       vo.setReview_content(reviewContent);
       vo.setReview_star(Integer.parseInt(reviewStar));
       vo.setMember_email((String) session.getAttribute("sess"));
       vo.setReview_regdate(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()));

       List<ReviewFileVO> fileList = new ArrayList<>();

       for (MultipartFile file : files) {
           String originFileName = file.getOriginalFilename();
           if (originFileName != null && !originFileName.isEmpty()) {
               String fileName = System.currentTimeMillis() + "_" + originFileName;
               String filePath = "C:\\Users\\ict03_004\\git\\FinalTeamProject\\finalProject\\src\\main\\resources\\static\\files\\" + fileName;

               try {
                   file.transferTo(new File(filePath));
               } catch (IOException e) {
                   logger.error("File upload failed: ", e);
               }

               ReviewFileVO fvo = new ReviewFileVO();
               fvo.setOrigin_file_name(originFileName);
               fvo.setFile_name(fileName);
               fvo.setFile_path(filePath);

               fileList.add(fvo);
           }
       }

       reviewService.insertReview(vo, fileList);
       
       return "redirect:reviewList";
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

}

package com.example.controller;

import java.io.File;
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

import com.example.domain.MemberVO;
import com.example.domain.ReviewFileVO;
import com.example.domain.ReviewVO;
import com.example.service.MemberService;
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
   private MemberService memberService;
   
   // 글 목록보기
   @RequestMapping("/getReviewList")
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
   
   @RequestMapping("/getReview")
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
   public String insertReview(
         @RequestParam("review_file") MultipartFile files, 
         ReviewVO vo, HttpSession session) {
      String id = (String) session.getAttribute("sess");
       System.out.println("getReview 페이지 이동 시 세션에서 가져온 id값: " + id);
      
       vo.setMember_email(id);
       
      try {
         // 파일의 원본 이름
         String originFilename = files.getOriginalFilename();
         System.out.println("원래파일명:" + originFilename);
         // 파일첨부를 한 경우라면
         if(originFilename !=null && !originFilename.equals("")) {
            String filename = new MD5Generator(originFilename).toString();
            System.out.println("변경파일명:" + filename);
            
            // 정해진 폴더를 지정
            String savepath = System.getProperty("user.dir")
                  + "\\src\\main\\resources\\static\\files";
            System.out.println("저장경로:" + savepath);
            
            if( !new File(savepath).exists()) {
               new File(savepath).mkdir();
            }
            
            // 실제 저장되는 파일
            String filepath = savepath + "\\" + filename;
            files.transferTo(new File(filepath));
            System.out.println(filepath+"저장되었음");
            
            // 디비저장
            ReviewFileVO reviewFileVO = new ReviewFileVO();
            reviewFileVO.setOrigin_file_name(originFilename);
            reviewFileVO.setFile_name(filename);
            reviewFileVO.setFile_path(filepath);
            
            // 파일을 첨부한 경우
            reviewService.insertReview(vo, reviewFileVO);
            
         }  // end of if
         else {
            // 파일을 첨부하지 않은 경우
            reviewService.insertReview(vo, null);
         }
         
      }catch(Exception ex) {
         ex.printStackTrace();
      }
      
      return "redirect:getReviewList";
   }
   
   // 글 수정
   @RequestMapping("/updateReview")
   public String updateReview(ReviewVO vo) {
      reviewService.updateReview(vo);
      
      return "redirect:getReviewList";
   }
   
   // 글 삭제
   @RequestMapping("/deleteReview")
   public String deleteReview(ReviewVO vo) {
      reviewService.deleteReview(vo);
      
      return "redirect:getReviewList";
   }
   
   // 글쓰기 페이지 이동
   @RequestMapping("/{step}")
    public String viewPage(@PathVariable String step, Model m
                               , HttpSession session
                               , HttpServletResponse response) {
        logger.info(step + " 경로 들어옴");

        // 세션에서 사용자 닉네임 가져오기
        MemberVO member = (MemberVO) session.getAttribute("member");
        System.out.println("insert"
              + " 세션에서 가져온 닉네임: " + member);  // 로그를 통해 id 값을 확인

        if (member != null) {
           String nickname = member.getMember_nickname();
            m.addAttribute("nickname", nickname);
        } else {
            System.out.println("닉네임이 null입니다. 세션에 닉네임이 설정되지 않았습니다.");
            PopUp.popUpMove(response, "로그인 후 이용 바랍니다.", "/review/getReviewList");
        }

        return "review/" + step;
    }
}

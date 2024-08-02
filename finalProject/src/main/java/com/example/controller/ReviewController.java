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

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller

// 리뷰 관련 요청 처리 컨트롤러
@RequestMapping("/review")
public class ReviewController<SearchCriteria> {
   
	// 로깅을 위한 로거 객체 생성
   static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
   
   // ReviewService 객체 자동 주입
   @Autowired 
   private ReviewService reviewService;
   
   
   // 리뷰 목록보기
   @RequestMapping("/reviewList")
   public String getReviewList(Model m,
                               @RequestParam(required = false) String searchCondition,
                               @RequestParam(required = false) String searchKeyword,
                               @RequestParam(defaultValue = "1") int page,
                               HttpSession session) {

       int pageSize = 6; // 페이지당 리뷰 수
       
       // 페이지와 페이지당 데이터 수를 이용해 offset 계산
       int offset = (page - 1) * pageSize;
       

       // 검색 조건 및 키워드를 위한 맵 생성
       HashMap<String, Object> map = new HashMap<>();
       map.put("searchCondition", searchCondition);
       map.put("searchKeyword", searchKeyword);
       map.put("offset", offset);
       map.put("pageSize", pageSize);

       // 총 리뷰 수 조회
       int totalCount = reviewService.getTotalCount(map);
       int totalPages = (int) Math.ceil((double) totalCount / pageSize);

       // 현재 페이지가 유효한지 확인
       if (page < 1) {
           page = 1; // 페이지는 1보다 작을 수 없음
       } else if (page > totalPages) {
           page = totalPages; // 페이지가 총 페이지 수보다 클 수 없음
       }

       // 리뷰 목록 조회
       List<ReviewVO> list = reviewService.getReviewList(map, page, pageSize);

       // 모델에 리뷰 목록 및 페이지 정보 추가
       m.addAttribute("reviewList", list);
       m.addAttribute("searchCondition", searchCondition);
       m.addAttribute("searchKeyword", searchKeyword);
       m.addAttribute("currentPage", page);
       m.addAttribute("totalPages", totalPages);

       return "/review/reviewList";
   }



   
   // 리뷰 상세보기
   @RequestMapping("/selectReview")
   public void getReview(@RequestParam int review_id, Model model, HttpSession session, ReviewVO vo) {
	   // 리뷰 ID 설정
       vo.setReview_id(review_id);

       // 조회수 증가 함수
       reviewService.incrementViewCount(vo);

       // 상세보기의 정보
       HashMap<String, Object> result = reviewService.getReview(vo); // 리뷰 정보 조회
       model.addAttribute("reviews", result.get("reviews"));
       model.addAttribute("review", result.get("reviewOne"));

       // 세션에서 사용자 ID 가져오기, 사용자 nickname 가져오기
       String id = (String) session.getAttribute("sess");
       String nickname = (String) session.getAttribute("nickname");
       
       if (id != null) {
           model.addAttribute("id", id);
       }
   }

   
   // 리뷰 작성 후 저장
   @RequestMapping("/saveReview")
   public String insertReview(
           @RequestParam(value = "review_file", required = false) List<MultipartFile> files,
           @RequestParam(value = "review_title", required = false) String reviewTitle,
           @RequestParam(value = "review_content", required = false) String reviewContent,
           @RequestParam(value = "review_star", required = false) String reviewStar,
           ReviewVO vo, HttpSession session, HttpServletResponse response) throws IOException {

	   	   response.setContentType("text/html; charset=UTF-8");
	       PrintWriter out = response.getWriter();

	       // 각 값들 null, !null 확인
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

	   // 입력값 설정
       vo.setReview_title(reviewTitle);
       vo.setReview_content(reviewContent);
       vo.setReview_star(Integer.parseInt(reviewStar));
       vo.setMember_email((String) session.getAttribute("sess"));
       // 년원일 시분초
       vo.setReview_regdate(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()));

       // 업로드된 파일 정보를 저장할 리스트
       List<ReviewFileVO> fileList = new ArrayList<>();

       // files 리스트의 각 파일에 대해 반복
       for (MultipartFile file : files) {
    	   // 파일의 원래 이름을 가져옴
           String originFileName = file.getOriginalFilename();
           if (originFileName != null && !originFileName.isEmpty()) {
        	   // 파일 이름 생성
               String fileName = System.currentTimeMillis() + "_" + originFileName;
               // 저장 경로
               String filePath = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\files\\" + fileName;
               System.out.println("filepath"+filePath);

               try {
            	   // 파일을 지정된 경로로 저장
                   file.transferTo(new File(filePath));
                 // 파일 저장 실패 시 에러 로그 출력
               } catch (IOException e) {
                   logger.error("File upload failed: ", e);
               }

               // ReviewFileVO 객체 생성 및 파일 정보 설정
               ReviewFileVO fvo = new ReviewFileVO();
               fvo.setOrigin_file_name(originFileName);
               fvo.setFile_name(fileName);
               fvo.setFile_path(filePath);

               // fileList에 ReviewFileVO 객체 추가
               fileList.add(fvo);
           }
       }

       reviewService.insertReview(vo, fileList);
       
       return "redirect:reviewList";
   }

   // 글 수정
   @RequestMapping("/updateReview")
   public String updateReview(ReviewVO vo, HttpServletResponse response,
		   					  String originalTitle, 
		   					  @RequestParam("originalContent") String originalContent) throws IOException {
	  response.setContentType("text/html;charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  
	  
	  // 유효성 검사를 통해 필드가 비어 있는지 확인
      if (vo.getReview_title() == null || vo.getReview_title().trim().isEmpty()) {
          out.println("<script>alert('제목을 입력해주세요.'); history.go(-1);</script>");
          out.flush();
          return null;
      }
      
      // 유효성 검사를 통해 필드가 비어 있는지 확인
      if (vo.getReview_content() == null || vo.getReview_content().trim().isEmpty()) {
          out.println("<script>alert('내용을 입력해주세요.'); history.go(-1);</script>");
          out.flush();
          return null;
      }
      
      // 기존 값과 새로운 값 비교
      boolean isTitleChanged = !vo.getReview_title().equals(originalTitle);
      boolean isContentChanged = !vo.getReview_content().equals(originalContent);

      if (!isTitleChanged && !isContentChanged) {
          out.println("<script>alert('수정하지 않았습니다.'); history.go(-1);</script>");
          out.flush();
          return null;
      }
      
      reviewService.updateReview(vo);
      out.println("<script>alert('수정되었습니다.'); location.href='reviewList';</script>");
      out.flush();
      return "redirect:reviewList";
   }
   
   // 글 삭제
   @RequestMapping("/deleteReview")
   public String deleteReview(ReviewVO vo, HttpServletResponse response) throws IOException{
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      reviewService.deleteReview(vo);
      
      out.println("<script>alert('삭제되었습니다.'); location.href='reviewList';</script>");
      out.flush();
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
           PopUp.popUpMove(response, "로그인 후 이용 바랍니다.", "/user/userLogin");
           return null;  // 팝업을 띄우고 리다이렉트가 처리되므로 null 반환
       }
   }

}

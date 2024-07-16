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

import com.example.domain.BoardVO;
import com.example.domain.FileVO;
import com.example.service.BoardService;
import com.example.service.MemberService;
import com.example.util.MD5Generator;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import useful.popup.PopUp;

@Controller
@RequestMapping("/board")
public class BoardController<SearchCriteria> {
	
	static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MemberService memberService;
	
	// 글 목록보기
	@RequestMapping("/getBoardList")
	public void getBoardList(Model m, HttpSession session) {
		BoardVO vo = new BoardVO(); // 추후에 조건 검색하고자 필요
		List<BoardVO> list = boardService.getBoardList(vo);
		boardService.incrementViewCount(vo);
		m.addAttribute("boardList", list);
		String id = (String) session.getAttribute("sess");
	}
	
	// 글 상세보기
    @RequestMapping("/getBoard")
    public void getBoard(@RequestParam int seq, Model model,
    					HttpSession session, BoardVO vo) {
        vo.setSeq(seq);
        
        
        // 조회수 증가 함수
        boardService.incrementViewCount(vo);
        
        // 상세보기의 정보
        HashMap result = boardService.getBoard(vo);
        System.out.println("상세보기의 값:" + result);
        model.addAttribute("board", result);
        
     // 세션에서 사용자 ID 가져오기
        String id = (String) session.getAttribute("sess");
        System.out.println("getBoard 페이지 이동 시 세션에서 가져온 id값: " + id);  // 로그를 통해 id 값을 확인
        
        if (id != null) {
        	model.addAttribute("id", id);
        } else {
            System.out.println("id값이 null입니다. 세션에 id가 설정되지 않았습니다.");
        }
    }
	
	// 글쓰기
	@RequestMapping("/saveBoard")
	public String insertBoard(
			@RequestParam("file") MultipartFile files, 
			BoardVO vo) {
		
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
				FileVO fileVO = new FileVO();
				fileVO.setOriginFilename(originFilename);
				fileVO.setFilename(filename);
				fileVO.setFilepath(filepath);
				
				// 파일을 첨부한 경우
				boardService.insertBoard(vo, fileVO);
				
			}  // end of if
			else {
				// 파일을 첨부하지 않은 경우
				boardService.insertBoard(vo, null);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return "redirect:getBoardList";
	}
	
	// 글 수정
	@RequestMapping("/updateBoard")
	public String updateBoard(BoardVO vo) {
		boardService.updateBoard(vo);
		
		return "redirect:getBoardList";
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		
		return "redirect:getBoardList";
	}
	
	// 글쓰기 페이지 이동
	@RequestMapping("/{step}")
    public String viewPage(@PathVariable String step, Model m
    									, HttpSession session
    									, HttpServletResponse response) {
        logger.info(step + " 경로 들어옴");

        // 세션에서 사용자 ID 가져오기
        String id = (String) session.getAttribute("sess");
        System.out.println("insertBoard 세션에서 가져온 id값: " + id);  // 로그를 통해 id 값을 확인

        if (id != null) {
            m.addAttribute("id", id);
        } else {
            System.out.println("id값이 null입니다. 세션에 id가 설정되지 않았습니다.");
            PopUp.popUpMove(response, "로그인 후 이용 바랍니다.", "/board/getBoardList");
        }

        return "board/" + step;
    }
}

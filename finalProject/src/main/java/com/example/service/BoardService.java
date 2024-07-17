package com.example.service;

import java.util.HashMap;
import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.FileVO;

public interface BoardService {
	List<BoardVO> getBoardList(BoardVO vo);
	
	HashMap getBoard(BoardVO vo); 
	
	void insertBoard(BoardVO vo, FileVO fvo);
	
	void updateBoard(BoardVO vo);
	
	void deleteBoard(BoardVO vo);
	
	void incrementViewCount(BoardVO vo);
	
}

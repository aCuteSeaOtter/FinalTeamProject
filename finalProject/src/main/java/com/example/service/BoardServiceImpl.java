package com.example.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.BoardDAO;
import com.example.dao.FileDAO;
import com.example.domain.BoardVO;
import com.example.domain.FileVO;

//**
@Service
public class BoardServiceImpl implements BoardService {
	
	//**
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired FileDAO fileDAO;

	public List<BoardVO>getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
	
	public HashMap getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}
	
	@Transactional
	public void insertBoard(BoardVO vo, FileVO fvo) {
		// 파일첨부가 있는 경우라면
		if(fvo !=null) {
			fileDAO.insertFile(fvo);
			vo.setFileid( fileDAO.selectId());
		}
		
		boardDAO.insertBoard(vo);
	}
	
	public void updateBoard(BoardVO vo) {
		
		boardDAO.updateBoard(vo);
	}
	
	public void deleteBoard(BoardVO vo) {
		
		boardDAO.deleteBoard(vo);
	}
	
	public void incrementViewCount(BoardVO vo) {
        boardDAO.incrementViewCount(vo);
    }
}

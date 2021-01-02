package com.icia.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.dto.BoardDTO;
import com.icia.board.dao.BoardDAO;

@Service
public class BoardService {

ModelAndView mav;
	
	@Autowired
	private BoardDAO dao;
	
	@Autowired
	private HttpSession session;
	
	public ModelAndView writeBoard(BoardDTO board) {
		// TODO Auto-generated method stub
		mav = new ModelAndView();
		System.out.println("service : "+board);
		int result=dao.writeBoard(board);
		
		if(result==1) {
			session.setAttribute("msg", "작성성공");
			mav.setViewName("boardwrite");
		} else {
			session.setAttribute("msg", "작성실패");
			mav.setViewName("boardwrite");
		}
		
		return mav;
	}

	public ModelAndView getBoardList(BoardDTO board) {
		
		mav = new ModelAndView();
		
		List<BoardDTO> boardList = dao.getBoardList(board);
		
		System.out.println("가져온 리스트 : "+boardList);
		mav.addObject("boardlist", boardList);
		mav.setViewName("BoardList");
		return mav;
	}

	public ModelAndView getBoardDetail(String bnumber) {
		// TODO Auto-generated method stub
		mav= new ModelAndView();
		BoardDTO bview = dao.getBoardDetail(bnumber);
		
		mav.addObject("board", bview);
		mav.setViewName("BoardDetail");
		
		return mav;
	}

}

package com.icia.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	ModelAndView mav;

	@Autowired
	private HttpSession session;
	
	@Autowired
	private BoardService service;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/getwriteform")
	public String getwriteform() {
		
		return "boardwrite";
	}
	
	@RequestMapping(value = "/boardWrite")
	public ModelAndView boardWrite(@ModelAttribute BoardDTO board) {
		System.out.println("controller : "+board);
		
		mav = service.writeBoard(board);
		return mav;
	}
	
	@RequestMapping(value="/boardlist")
	public ModelAndView boardList(@ModelAttribute BoardDTO board) {
		System.out.println("controller : "+board);
		
		mav = service.getBoardList(board);
		return mav;
	}
	
	@RequestMapping(value="/BoardView")
	public ModelAndView boardList(@RequestParam("bnumber") String bnumber) {
		System.out.println("controller : "+bnumber);
		
		mav = service.getBoardDetail(bnumber);
		return mav;
	}
	
}

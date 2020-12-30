package com.icia.member;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	ModelAndView mav;
	
	@Autowired
	private MemberService ms;
	
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
	
	@RequestMapping(value = "/goJoin")
	public String goJoin() {

		return "memberJoin";
	}
	
	@RequestMapping(value = "/MemberJoin")
	public String memberJoin(@ModelAttribute MemberDTO member) {
		
		String result = ms.insertMember(member);

		return result;
	}
	
	//로그인, 회원목록, 상세조회, 정보수정, 삭제, 로그아웃, ajax(아이디 중복확인)
	
	@RequestMapping(value = "/Login")
	public String gologin() {

		return "login";
	}
	
	@RequestMapping(value = "/member-login")
	public ModelAndView login(@ModelAttribute MemberDTO member) {
		mav=new ModelAndView();
		
		mav.addObject("mid",member.getMid());
		
		String result = ms.login(member);
		
		mav.setViewName(result);
		
		return mav;
	}
	
	@RequestMapping(value = "/MemberList")
	public ModelAndView getMemberList(@ModelAttribute MemberDTO member) {

		mav=ms.getMemberList(member);

		return mav;
	}
	
	@RequestMapping(value = "/memberview")
	public ModelAndView getMemberView(@RequestParam("mid") String mid) {
	
		mav = ms.getMemberView(mid);
		
		return mav;
	}
	
	@RequestMapping(value = "/memberdelete")
	public ModelAndView memberDelete(Model model,@RequestParam("mid") String mid) {
		
		int result= ms.getmemberDelete(mid);
		if(result==1) {
			mav.addObject("msg", "삭세성공");
			/* model.addAttribute("msg", "삭제 성공"); */
			mav.setViewName("redirect:/MemberList");
			
		} else {

			model.addAttribute("msg", "삭제 실패");
		}
	
		return mav;
	}
	
	@RequestMapping(value = "/getupdateform")
	public ModelAndView getupdateform(@RequestParam("mid") String mid) {
		
		mav=ms.getUserInfo(mid);
		return mav;
	}
	
	@RequestMapping(value = "/memberUpdate")
	public ModelAndView memberUpdate(@ModelAttribute MemberDTO member) {
		
		mav=ms.memberUpdate(member);
		return mav;
	}
	
}

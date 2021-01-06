package com.icia.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.spring.dto.MemberDTO;
import com.icia.spring.service.MemberService;


@Controller
public class MemberController {
	
	ModelAndView mav;

	@Autowired
	private HttpSession session;
	
	@Autowired
	private MemberService ms;
	
	@RequestMapping(value = "/idoverlap")
	public @ResponseBody String idoverlap(@RequestParam("mid") String mid) {
		//@responseBody : text를 그대로 리턴할 수 있게 만들어 주는 어노테이션
		System.out.println("ajax로 넘어온 값 확인 : "+mid);

		return ms.idoverlap(mid);
	}
	
	@RequestMapping(value = "/signup")
	public ModelAndView signup(@ModelAttribute MemberDTO member) {
		
		member.setMadd(member.getMpostcode()+","+member.getMroadadd()+","+member.getMjibunadd()+","+member.getMdetailadd()+","+member.getMextraadd());
		System.out.println("주소값 : "+member.getMadd());
		mav=ms.signup(member);
		
		return mav;
	}
	
	@RequestMapping(value = "/logIn")
	public String logIn(@ModelAttribute MemberDTO member) {
		
		String result=ms.logIn(member);
		
		return result;
	}

}

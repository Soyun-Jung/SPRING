package com.icia.spring.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.spring.dao.MemberDAO;
import com.icia.spring.dto.MemberDTO;


@Service
public class MemberService {
	
	ModelAndView mav;
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HttpSession session;

	public String idoverlap(String mid) {
		// TODO Auto-generated method stub
		
			int result=dao.idoverlap(mid);
			String canuse=null;
			if(result==0) {
				canuse="ok";
			}else {
				canuse="no";
			}
			
			return canuse;
		}

	public ModelAndView signup(MemberDTO member) {
		// TODO Auto-generated method stub
		int result = dao.signup(member);
		
		if(result>0) {
			mav.setViewName("home");
		}
		else {
			mav.setViewName("JoinForm");
		}
		return mav;
	}

	public String logIn(MemberDTO member) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		
		String mname = dao.checkMember(member);
		String result="";
		
		//로그인 성공(세션에 아이디 저장, MemberMain.jsp화면 출력)
		if(mname!=null) {
			session.setAttribute("mname", mname);
			result="index";
		}
		else {//로그인 실패
			result="home";
		} 
	
		return result;
	
	}
}



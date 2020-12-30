package com.icia.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.member.dao.MemberDAO;
import com.icia.member.dto.MemberDTO;

@Service
public class MemberService {
	
	ModelAndView mav;
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HttpSession session;

	public String insertMember(MemberDTO member) {
		// TODO Auto-generated method stub
		int result = dao.insertMember(member);
		String resultPage="";
		
		if(result>0) {
			resultPage="login";
		}
		else {
			resultPage="JoinFail";
		}
		
		return resultPage;		
	}

	public String login(MemberDTO member) {
		// TODO Auto-generated method stub
		
		int checkresult = dao.checkMember(member);
		String result="";
		
		//로그인 성공(세션에 아이디 저장, MemberMain.jsp화면 출력)
		if(checkresult==1) {
			session.setAttribute("loginid", member.getMid());
			result="MemberMain";
		}
		else {//로그인 실패
			result="loginfail";
		} 
			
		
		return result;
	}

	public ModelAndView getMemberList(MemberDTO member) {
		mav=new ModelAndView();
		List<MemberDTO> mList=dao.getMemberList(member);
		
		mav.addObject("mlist",mList);
		mav.setViewName("MemberList");
		
		return mav;
		
	}

	public ModelAndView getMemberView(String mid) {
		mav=new ModelAndView();
		MemberDTO member = new MemberDTO();
		System.out.println(mid);
		member = dao.getMemberView(mid);
		
		mav.addObject("member",member);
		mav.setViewName("MemberView");
		
		return mav;
		
	}

	public int getmemberDelete(String mid) {

		return dao.memberDelete(mid);
	}

	public ModelAndView getUserInfo(String mid) {
		mav=new ModelAndView();
		MemberDTO member = new MemberDTO();
		
		member= dao.getMemberView(mid);
		
		mav.addObject("member", member);
		mav.setViewName("MemberUpdateForm");
		
		return mav;
		
	}

	public ModelAndView memberUpdate(MemberDTO member) {
		// TODO Auto-generated method stub
		mav=new ModelAndView();
		
		MemberDTO newinfo = new MemberDTO();
		newinfo = dao.memberUpdate(member);
		mav.addObject("member", newinfo);
		mav.setViewName("MemberView");
		
		
		return mav;
	}
	
	

}

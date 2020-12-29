package com.icia.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.member.dao.MemberDAO;
import com.icia.member.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;

	public void insertMember(MemberDTO member) {
		// TODO Auto-generated method stub
		dao.insertMember(member);
		
	}

}

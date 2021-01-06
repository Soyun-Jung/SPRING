package com.icia.spring.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.spring.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;

	
	public int idoverlap(String mid) {
		
		return sql.selectOne("Member.checkId", mid);			
		
	}


	public int signup(MemberDTO member) {
		
		return sql.insert("Member.sighUp",member);
	}


	public String checkMember(MemberDTO member) {
		// TODO Auto-generated method stub
		int result = 0;
		String mid=member.getMid();
		int idresult = sql.selectOne("Member.checkId", mid);
		System.out.println("아이디 : " + idresult);
		String mname=null;
		
		if(idresult>=1) {
			member = sql.selectOne("Member.checkPw",member);
			System.out.println("dao아이디 : " + member.getMid());
			if(member.getMid()!=null) {
				mname=member.getMname();
			}
		}
		
		System.out.println("결과 : " + mname);
		return mname;
	}

}

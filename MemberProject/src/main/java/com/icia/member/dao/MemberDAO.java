package com.icia.member.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.member.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public int insertMember(MemberDTO member) {
		// TODO Auto-generated method stub
		
		int result = sql.insert("Member.insertMember",member);
		
		return result;
	}

	public int checkMember(MemberDTO member) {
		// TODO Auto-generated method stub
		int result = 0;
		int idresult = sql.selectOne("Member.checkId", member);
		System.out.println("아이디 : " + idresult);
		
		if(idresult>=1) {
			int pwresult = sql.selectOne("Member.checkPw",member);
			System.out.println("비번 : " + pwresult);
			if(pwresult==1) {
				result =1;
			}
		}
		
		System.out.println("결과 : " + result);
		return result;
	}

	public List<MemberDTO> getMemberList(MemberDTO member) {
		
		return sql.selectList("Member.getMemberList");
		
	}

	public MemberDTO getMemberView(String mid) {
		
		return sql.selectOne("Member.getMemberView",mid);		
	}

	public int memberDelete(String mid) {
		// TODO Auto-generated method stub
		return sql.delete("Member.memberDelete", mid);
		
	}

	public MemberDTO memberUpdate(MemberDTO member) {
		// TODO Auto-generated method stub
		sql.update("Member.memberUpdate", member);
		System.out.println(member);
		return member;
	}

	
	

}

package com.icia.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.member.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	public void insertMember(MemberDTO member) {
		// TODO Auto-generated method stub
		
		sql.insert("Member.insertMember",member);
		
	}

}

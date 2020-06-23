package com.edu.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.member.model.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String namespace =  "com.edu.member.";

	@Override
	public List<MemberDto> memberList() {
		// TODO Auto-generated method stub
		
		List<MemberDto> memberList = sqlSession.selectList(namespace + "memberList");
		
		return memberList;
	}
	
}

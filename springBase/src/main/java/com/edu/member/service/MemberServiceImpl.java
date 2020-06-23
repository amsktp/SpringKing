package com.edu.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.member.dao.MemberDao;
import com.edu.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;

	@Override
	public List<MemberDto> memberList() {
		// TODO Auto-generated method stub
		
		List<MemberDto> memberList = new ArrayList<MemberDto>();
		
		memberList = memberDao.memberList();
		
		return memberList;
	}
	
	
	
}

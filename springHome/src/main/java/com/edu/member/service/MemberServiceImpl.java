package com.edu.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.member.dao.MemberDao;
import com.edu.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	public MemberDao memberDao;
	
	@Override
	public List<MemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		List<MemberDto> memberList = memberDao.memberSelectList();
		return memberList;
	}

//컨트롤러에서 서비스로 보냄
//	앞으로는 죽었다 깨어나도 인터페이스를 만들어야함 
	
	
}

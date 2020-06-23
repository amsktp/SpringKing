package com.edu.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.member.model.MemberDto;
import com.edu.member.model.MemberFileDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace =  "com.edu.member.";
	
		
	@Override
	public List<MemberFileDto> memberSelectList(String searchOption, String keyword, int start, int end) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		map.put("start", start);
		map.put("end", end);
		
		
		System.out.println("시작은돼?");
		List<MemberFileDto> memberFileList = sqlSession.selectList(namespace + "memberSelectList", map);
		
		return memberFileList;
	}

	@Override
	public List<MemberDto> memberSelectList() {
		// TODO Auto-generated method stub
		List<MemberDto> memberList = sqlSession.selectList(namespace + "memberSelectList");
		
		
		return memberList;
	}

	@Override
	public MemberDto memberExist(String email, String password) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		
		MemberDto memberDto = sqlSession.selectOne(namespace + "memberExist", paramMap); 
		return memberDto;
	}

	@Override
	public int memberInsertOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		
//		HashMap<String, Object> paramMap = new HashMap<>();
//		paramMap.put("mname", memberDto.getName());
//		paramMap.put("email", memberDto.getEmail());
//		paramMap.put("pwd", memberDto.getPassword());
	
		
		return sqlSession.insert(namespace + "memberInsertOne", memberDto);
		
	}

	@Override
	public int memberDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace + "memberDeleteOne", no);
	}

	@Override
	public MemberDto memberSelectOne(int no) {
		// TODO Auto-generated method stub
		
		MemberDto memberDto = sqlSession.selectOne(namespace + "memberSelectOne", no);
		return memberDto;
	}

	@Override
	public int memberSelectTotalCount(String searchOption, String keyword) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		return sqlSession.selectOne(namespace + "memberSelectTotalCount",map);
		
	}

	@Override
	public void insertFile(Map<String, Object> map) {
		// TODO Auto-generated method stub
	
		
		sqlSession.insert(namespace + "insertFile", map);
	}

	@Override
	public List<Map<String, Object>> fileSelectList(int no) {
		// TODO Auto-generated method stub
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("no", no);
		
		return sqlSession.selectList(namespace + "fileSelectList", map);
	}

	@Override
	public Map<String, Object> fileSelectStoredFileName(int no) {
		// TODO Auto-generated method stub
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("no", no);
		
		return sqlSession.selectOne(namespace + "fileSelectStoredFileName", map);
	}

	@Override
	public int memberUpdateOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + "memberUpdateOne", memberDto);
	}

	@Override
	public int fileDelete(int parentSeq) {
		// TODO Auto-generated method stub
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("parentSeq", parentSeq);
		
		return sqlSession.delete(namespace + "fileDelete", map);
	}
	

}

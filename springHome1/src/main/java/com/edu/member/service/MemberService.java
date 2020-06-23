package com.edu.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.member.model.MemberDto;
import com.edu.member.model.MemberFileDto;

public interface MemberService {

	public List<MemberFileDto> memberSelectList(String searchOption, String keyword, int start, int end);

	public List<MemberDto> memberSelectList();

	public MemberDto memberExist(String email, String password);

	public int memberInsertOne(MemberDto memberDto, MultipartHttpServletRequest multipartHttpServletRequest);
	
	public int memberDeleteOne(int no);

	public int memberUpdateOne(MemberDto memberDto, MultipartHttpServletRequest multipartHttpServletRequest, int fileIdx) throws Exception;
	
//	public MemberDto memberSelectOne(int no);
	
	public Map<String, Object> memberSelectOne(int no);

	
	public int memberSelectTotalCount(String searchOption, String keyword);

	public Map<String, Object> fileSelectStoredFileName(int no);

}

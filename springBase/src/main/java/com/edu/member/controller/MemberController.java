package com.edu.member.controller;


import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.member.model.MemberDto;
import com.edu.member.service.MemberService;

@Controller
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value = "member/list.do", method = RequestMethod.GET)
	public String memberList(Model model) {
		
		
		
		
		
		List<MemberDto> memberList = new ArrayList<MemberDto>();
		
		memberList = memberService.memberList();
		
		model.addAttribute("memberList", memberList);
		
		
		
		
		
		return "member/memberListView";
	}
	
}

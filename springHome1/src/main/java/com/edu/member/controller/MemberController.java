package com.edu.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.edu.member.model.MemberDto;
import com.edu.member.model.MemberFileDto;
import com.edu.member.service.MemberService;
import com.edu.util.Paging;

@Controller
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		
//		모델은 담아서 보내는거( request와 비슷하다)

		log.info("들어오긴 해?? 로그아웃");
		session.invalidate();
		
		return "redirect:/login.do";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		log.info("여기는 로그인 폼 입니다.");
		return "auth/LoginForm";
	}

	
	@RequestMapping(value = "/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password, HttpSession session, Model model) {
		log.info("여기는 로그인CTR 이예요." + email + ", " + password);
		
		String viewUrl = "";
		
		MemberDto memberDto = memberService.memberExist(email, password);
		//	인풋의 네임과 바라메타 이름은 같아야한다.	
		//	넘겨받는 같은 이름의 파라메타가 여러개일 때 String 배열 파라메타로 받을 수 있다
		
		if(memberDto != null) {
			session.setAttribute("member", memberDto);
			session.setMaxInactiveInterval(10);
			
			viewUrl = "redirect:/member/list.do";
		}else {
			viewUrl = "/auth/LoginFail";
		}

		return viewUrl;
	}
	
	@RequestMapping(value = "/member/list.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String MemberList(@RequestParam(defaultValue = "1") int curPage
			, @RequestParam(defaultValue = "all")String searchOption
			, @RequestParam(defaultValue = "")String keyword
			, Model model) {
		
		log.info("Welcome MemberList!"+ curPage + " : " + searchOption + " : " + keyword);
		
		if("name".equals(searchOption)) {
			searchOption = "mname";
		}
		
		int totalCount = memberService.memberSelectTotalCount(searchOption, keyword);
		
		Paging memberPaging = new Paging(totalCount, curPage);
		
		int start = memberPaging.getPageBegin();
		int end = memberPaging.getPageEnd();

		List<MemberFileDto> memberFileList = memberService.memberSelectList(searchOption, keyword, start, end);
		
		if("mname".equals(searchOption)) {
			searchOption = "name";
		}
		
		HashMap<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("searchOption", searchOption);
		searchMap.put("keyword", keyword);
		
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("memberPaging", memberPaging);
		
		model.addAttribute("memberFileList", memberFileList);
		model.addAttribute("pagingMap", pagingMap);
		
		model.addAttribute("searchMap", searchMap);
		
		return "member/MemberListView";
	}
	
	@RequestMapping(value="/member/listOne.do", method = RequestMethod.GET)
	public String memberListOne(int no, Model model) {
		
		log.info("이것은 listone.do 입니다");

//		강사님의 LOGIC~~!
//		현재 페이지는 상세 조회
//		List.do는 요약된 정보들
//		상세 조회는 모든 정보들
//		단, 시스템 정보는 X 중요한 정보는 O
//		이름, 이메일, 가입일, 회원번호

		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto)map.get("memberDto");
		
		List<Map<String, Object>> fileList = (List<Map<String,Object>>)map.get("fileList");
		
		model.addAttribute("memberDto", memberDto);
		model.addAttribute("fileList", fileList);
		
		return "member/MemberListOneView";
		
	}
	
	
	//회원 추가 화면
	@RequestMapping(value = "/member/add.do")
	public String memberAdd(Model model) {
		log.info("이것은 애드유저의 GET 입니다");
		return "member/MemberForm";
	}

	//회원 추가 로직 (오버로딩 사용)
	@RequestMapping(value = "/member/addCtr.do", method = RequestMethod.POST)
	public String memberAdd(MemberDto memberDto, MultipartHttpServletRequest mulRequest ,Model model) {
		log.info("이것은 애드유저의 POST 입니다");
		
		int result = 0;
		
//		MemberDto memberDto = new MemberDto();
//		memberDto.setEmail(email);
//		memberDto.setName(name);
//		memberDto.setPassword(password);
		
		
		
		result = memberService.memberInsertOne(memberDto, mulRequest);
		
		log.info("result의 결과 :" + result);

		if(result == 0) {
			log.info("회원 추가 실패");
		}else {
			log.info("회원 추가 성공");
		}
		
		return "redirect:/member/list.do";
	}
	
	@RequestMapping(value = "/member/deleteCtr.do")
	public String memberDeleteCtr(int no, Model model) {
		
		log.info("여기는 딜리트 CTR 입니다");
		
		int result = 0;

		Map<String, Object> tempFileMap = null;
		tempFileMap = memberService.fileSelectStoredFileName(no);
		
		result = memberService.memberDeleteOne(no);
		
		if(result == 0) {
			log.info("회원 삭제 실패");
		}else {
			log.info("회원 삭제 성공");
		}
		
		return "redirect:/member/list.do";
	}
	
	@RequestMapping(value = "/member/update.do")
	public String memberUpdate(int no, Model model) {
		
		log.info("여기는 업데이트 입니다(GET)");
		
		Map<String, Object> map = memberService.memberSelectOne(no);
		
		MemberDto memberDto = (MemberDto) map.get("memberDto");
		
		List<Map<String, Object>> fileList = (List<Map<String,Object>>)map.get("fileList");
		
		model.addAttribute("fileList", fileList);
		model.addAttribute("memberDto", memberDto);
		
		return "member/MemberUpdateForm";
		
	}
	
	@RequestMapping(value = "/member/updateCtr.do", method = RequestMethod.POST)
	public String memberUpdate(HttpSession session, MemberDto memberDto
			, @RequestParam(value="fileIdx", defaultValue = "-1") int fileIdx
			, MultipartHttpServletRequest multipartHttpServletRequest
			, Model model) {
		
		log.info("여기는 업데이트 입니다(POST) {} :: {}", memberDto, fileIdx);
		
		int resultNum = 0;
		
		try {
			resultNum = memberService.memberUpdateOne(memberDto, multipartHttpServletRequest, fileIdx);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("resultNum = " + resultNum);
		// 데이터베이스에서 회원정보가 수정이 됐는데 세션에 있는 사람의 정보가 볍ㄴ경되었을 때
		// 처리 로직
		if(resultNum != 0 ) {
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@1들어와?@@@@@@@@@@@@@@@@");
			MemberDto sessionMemberDto = (MemberDto)session.getAttribute("member");
			if(sessionMemberDto != null) {
				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@2들어와?@@@@@@@@@@@@@@@@");
				System.out.println(sessionMemberDto.getNo() + "<- ->" + memberDto.getNo());
				
				if(sessionMemberDto.getNo() == memberDto.getNo()) {
					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@3들어와?@@@@@@@@@@@@@@@@");
					MemberDto newMemberDto = new MemberDto(memberDto.getNo(), memberDto.getName(), memberDto.getEmail());
					session.removeAttribute("member");
					session.setAttribute("member", newMemberDto);
				}
			}
		}
		
		
		return "common/successPage";
	}
	
}

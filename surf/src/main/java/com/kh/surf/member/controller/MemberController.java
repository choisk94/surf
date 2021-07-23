package com.kh.surf.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("test1.do")
	public String test1() {
		
		return "member/myPage";		// 화면 확인하려고 임으로 만든 컨트롤러입니다. 기능 구현할 때 수정할 예정입니다.(최서경)
	}
	
	@RequestMapping("test2.do")
	public String test2() {
		
		return "member/studyBoardList";
	}
}

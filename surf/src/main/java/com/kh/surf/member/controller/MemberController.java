package com.kh.surf.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.surf.member.model.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm() {
		
		return "lecture/lectureVideoVIew";		// 화면 확인하려고 임으로 만든 컨트롤러입니다. 기능 구현할 때 수정할 예정입니다.(최서경)
	}
	
	@RequestMapping("test2.do")
	public String test2() {
		
		return "common/errorPage";
	}
	
}

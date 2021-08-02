package com.kh.surf.member.model.service;

import com.kh.surf.member.model.vo.Member;

public interface MemberService {
	
	// 로그인
	Member loginMember(Member m);
	
	// 회원가입
	int insertMember(Member m);
	
	// 회원정보 수정
	int updateMember(Member m);
	
	// 회원탈퇴
	int deleteMember(String userId);
	
	// 아이디 중복체크
	int idCheck(String userId);

}

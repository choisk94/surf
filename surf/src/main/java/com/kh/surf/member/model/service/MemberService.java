package com.kh.surf.member.model.service;

import java.util.ArrayList;

import com.kh.surf.lecture.model.vo.Chapter;
import com.kh.surf.lecture.model.vo.ClassStuding;
import com.kh.surf.lecture.model.vo.ClassVideo;
import com.kh.surf.member.model.vo.Member;
import com.kh.surf.teacher.model.vo.Teacher;

public interface MemberService {
	
	// 로그인
	Member loginMember(Member m);
	
	// 회원가입
	int insertMember(Member m);
	
	// 회원정보 수정
	int updateMemInfo(Member m);
	
	// 회원 비밀번호 수정
	int updateMemPwd(Member m);
	
	// 회원탈퇴
	int deleteMember(int userNo);
	
	// 아이디 중복체크
	int idCheck(String userId);
	
	// status체크
	String statusCheck(String userId);
	

	// 클래스 번호로 '강사 정보' 가져오기
	Teacher selectTeacherByClassNo(int classNo);
	
	// 클래스 번호로 '강의챕터목록' 가져오기
	ArrayList<Chapter> selectChapterList(int classNo);
	
	// 클래스 번호로 '강의영상목록' 가져오기
	ArrayList<ClassVideo> ajaxSelectVideoList(int classNo);
	
	// 마지막 비디오 시청 기록
	int ajaxUpdateClassStuding(ClassStuding cs);
	
}

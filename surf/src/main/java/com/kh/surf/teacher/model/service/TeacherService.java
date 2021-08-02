package com.kh.surf.teacher.model.service;

import java.util.ArrayList;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;
import com.kh.surf.teacher.model.vo.Teacher;

public interface TeacherService {
	
	// 1. 로그인한 유저 강사정보 가져오는 메소드
	Teacher selectTeacher(int userNo);

	// 2. 닉네임 중복체크
	int checkNickname(Teacher t);
	
	// 3. 강사정보수정ajax
	int updateTeacher(Teacher t);
	
	// 4. 강사별 개설 클래스 목록 조회
	ArrayList<Lecture> selectClassList(int userNo);
	
	// 5_1. 전체 후기 목록 조회
	int selectReviewCount(int userNo);
	ArrayList<Survey> selectReviewList(PageInfo pi, int userNo);
	
	// 5_2. 선택된 클래스 후기 목록 조회
	
	// 6. 후기 상세 조회
	Survey selectReviewDetail(int surveyNo);
	
	
}

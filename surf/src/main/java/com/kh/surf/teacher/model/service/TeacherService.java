package com.kh.surf.teacher.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.ClassInquiry;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.MonthlyStats;
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
	ArrayList<Lecture> selectClassList(String userNo);
	
	// 5. 클래스 후기 목록 조회
	int selectReviewCount(HashMap<String, String> map);
	ArrayList<Survey> selectReviewList(PageInfo pi, HashMap<String, String> map);
	
	// 6. 클래스 후기 상세 조회
	Survey selectReviewDetail(int sno);
	
	// 7. 클래스 등록 페이지 정보 가져오기(등록, 수정)
		
	// 8. 클래스 등록 페이지 input 등록하기
	
	// 9. 클래스 등록 페이지 완성도 조회
	
	// 10. 강사에 대한 클래스 수, 목록 가져오기 
	int selectLectureListCount(int userNo); 
	ArrayList<Lecture> selectLectureByTeacher(int userNo, PageInfo pi);
	
	// 11. 강사 클래스 전체 수익 월별 집계 데이터 가져오기(Servlet) 및 클래스 번호 및 클래스이름 | 강사의 모든 클래스  번호 가져오기
	ArrayList<MonthlyStats> monthlyStatsAll(int userNo);
	ArrayList<Lecture> selectTeacherClassAll(int userNo);
	
	// 12. 강사 클래스 한 클래스 수익 월별 집계 데이터 가져오기(Ajax)
	ArrayList<MonthlyStats> monthlyStatsLecture(int classNo);
	
	// 13. 강사 클래스 펀딩수락, 클래스 삭제
	int deleteLecture(Lecture l);
	int startFunding(Lecture l);
	
	// 14. 클래스 문의 목록 조회
	int selectInquiryCount(HashMap<String, String> map);
	ArrayList<ClassInquiry> selectInquiryList(PageInfo pi, HashMap<String, String> map);
	
	// 15. 클래스 문의 상세 조회
	ClassInquiry selectInquiryDetail(int cno);
}

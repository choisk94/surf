package com.kh.surf.teacher.model.service;

import com.kh.surf.teacher.model.vo.Teacher;

public interface TeacherService {
	
	// 1. 로그인한 유저 강사정보 가져오는 메소드
	Teacher selectTeacher(int userNo);

	// 2. 닉네임 중복체크
	int checkNickname(Teacher t);
	
	// 3. 강사정보수정ajax
	int updateTeacher(Teacher t);
	
}

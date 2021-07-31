package com.kh.surf.teacher.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.teacher.model.dao.TeacherDao;
import com.kh.surf.teacher.model.vo.Teacher;

/**
 * @author 윤희락7.26
 *
 */
@Service
public class TeacherServiceImpl implements TeacherService{
	
	@Autowired
	private TeacherDao tDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * @author 윤희락 7.26
	 * 로그인한 회원 Teacher정보요청처리
	 */
	@Override
	public Teacher selectTeacher(int userNo) {
		return tDao.selectTeacher(userNo, sqlSession);
	}
	
	
	@Override
	public int checkNickname(Teacher t) {
		return tDao.checkNickname(t, sqlSession);
	}


	@Override
	public int updateTeacher(Teacher t) {
		return tDao.updateTeacher(t, sqlSession);
	}
	
	
}

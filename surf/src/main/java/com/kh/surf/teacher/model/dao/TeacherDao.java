package com.kh.surf.teacher.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.teacher.model.vo.Teacher;

@Repository
public class TeacherDao {

	/**
	 * @author HeeRak
	 * @return 로그인한 회원의 teacher정보
	 */
	public Teacher selectTeacher(int userNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teacherMapper.selectTeacher", userNo);
	}

	/**
	 * @author HeeRak
	 * @return 강사 닉네임 중복확인 결과
	 */
	public int checkNickname(Teacher t, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teacherMapper.checkNickname", t);
	}

	/**
	 * @author HeeRak
	 * @return 강사정보수정 결과
	 */
	public int updateTeacher(Teacher t, SqlSessionTemplate sqlSession) {
		return sqlSession.update("teacherMapper.updateTeacher", t);
	}
	
}

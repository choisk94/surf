package com.kh.surf.teacher.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;
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
	
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 해당 강사의 클래스 목록 반환
	 */
	public ArrayList<Lecture> selectClassList(int userNo, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("teacherMapper.selectClassList", userNo);
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 조회할 리뷰글의 총 개수 반환
	 */
	public int selectReviewCount(int userNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teacherMapper.selectReviewCount", userNo);
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 리뷰 목록 반환
	 */
	public ArrayList<Survey> selectReviewList(PageInfo pi, int userNo, SqlSessionTemplate sqlSession) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("teacherMapper.selectReviewList", userNo, rowBounds);
	}
	
}

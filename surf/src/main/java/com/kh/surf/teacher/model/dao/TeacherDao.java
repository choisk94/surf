package com.kh.surf.teacher.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.MonthlyStats;
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
	 * @author HeeRak
	 * @return 강사의 모든 클래스번호
	 */
	public ArrayList<Lecture> selectTeacherClassAll(int userNo, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("lectureMapper.selectTeacherClassAll", userNo);
	}
	
	/**
	 * @author HeeRak
	 * @return 한 강사의 전체 클래스 월별수익
	 */
	public ArrayList<MonthlyStats> monthlyStatsAll(int userNo, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("teacherMapper.monthlyStatsAll", userNo);
	}

	/**
	 * @author HeeRak
	 * @return 한 강사의 한 클래스 월별수익
	 */
	public ArrayList<MonthlyStats> monthlyStatsLecture(int classNo, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("teacherMapper.monthlyStatsLecture", classNo);
	}

	
	
	/**
	 * @author WooJoo
	 * @return 해당 강사의 클래스 목록
	 */
	public ArrayList<Lecture> selectClassList(String userNo, SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("teacherMapper.selectClassList", userNo);
	}
	
	/**
	 * @author WooJoo
	 * @return 조회할 후기의 총 개수
	 */
	public int selectReviewCount(HashMap<String, String> map , SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teacherMapper.selectReviewCount", map);
	}
	
	/**
	 * @author WooJoo
	 * @return 후기 목록
	 */
	public ArrayList<Survey> selectReviewList(PageInfo pi, HashMap<String, String> map , SqlSessionTemplate sqlSession) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("teacherMapper.selectReviewList", map, rowBounds);
	}
	
	/**
	 * @author WooJoo
	 * @return 후기 상세 내용
	 */
	public Survey selectReviewDetail(int sno, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("teacherMapper.selectReviewDetail", sno);
	}

	/**
	 * @author HeeRak
	 * @return (한 강사의)클래스 목록 수
	 */
	public int selectLectureListCount(int userNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("lectureMapper.selectLectureListCount", userNo);
	}
	
	/**
	 * @author HeeRak
	 * @return (한 강사의)클래스 목록
	 */
	public ArrayList<Lecture> selectLectureByTeacher(int userNo, PageInfo pi, SqlSessionTemplate sqlSession) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("lectureMapper.selectLectureByTeacher", userNo, rowBounds);
	}

	/**
	 * @author HeeRak
	 * @return 클래스 펀딩승인처리 결과
	 */
	public int startFunding(Lecture l, SqlSessionTemplate sqlSession) {
		int result1 = sqlSession.insert("teacherMapper.insertFunding", l);
		int result2 = sqlSession.update("teacherMapper.startFunding", l);
		return result1 * result1;
	}

	/**
	 * @author HeeRak
	 * @return 클래스 삭제요청처리 결과
	 */
	public int deleteLecture(Lecture l, SqlSessionTemplate sqlSession) {
		return sqlSession.update("teacherMapper.deleteLecture", l);
	}

	
}

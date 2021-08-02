package com.kh.surf.teacher.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.MonthlyStats;
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
	
	
	/**
	 * @author HeeRak
	 * 강사정보수정시 닉네임 중복체크
	 */
	@Override
	public int checkNickname(Teacher t) {
		return tDao.checkNickname(t, sqlSession);
	}


	/**
	 * @author HeeRak
	 * 강사정보수정 처리 결과
	 */
	@Override
	public int updateTeacher(Teacher t) {
		return tDao.updateTeacher(t, sqlSession);
	}

	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 
	 */
	@Override
	public ArrayList<Lecture> selectClassList(int userNo) {
		return tDao.selectClassList(userNo, sqlSession);
	}
	
	
	@Override
	public int selectReviewCount(int userNo) {
		return tDao.selectReviewCount(userNo, sqlSession);
	}


	@Override
	public ArrayList<Survey> selectReviewList(PageInfo pi, int userNo) {
		return tDao.selectReviewList(pi, userNo, sqlSession);
	}
	/**
	 * @author HeeRak
	 * 한 강사의 모든 클래스 정보 가져오기
	 */
	@Override
	public ArrayList<Lecture> selectTeacherClassAll(int userNo) {
		return tDao.selectTeacherClassAll(userNo, sqlSession);
	}
	/**
	 * @author HeeRak
	 * 월별집계 (전체 클래스)
	 */
	@Override
	public ArrayList<MonthlyStats> monthlyStatsAll(int userNo) {
		return tDao.monthlyStatsAll(userNo, sqlSession);
	}
	
	/**
	 * @author HeeRak
	 * 월별집계 (특정 1개 클래스)
	 */
	@Override
	public ArrayList<MonthlyStats> monthlyStatsLecture(int classNo) {
		return tDao.monthlyStatsLecture(classNo, sqlSession);
	}


	
	@Override
	public Survey selectReviewDetail(int surveyNo) {
		// TODO Auto-generated method stub
		return null;
	}

}

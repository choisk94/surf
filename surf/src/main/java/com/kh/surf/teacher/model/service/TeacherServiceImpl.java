package com.kh.surf.teacher.model.service;

import java.util.ArrayList;
import java.util.HashMap;
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
	 * @author WooJoo
	 * 후기 조회 가능한 클래스 목록 조회 
	 */
	@Override
	public ArrayList<Lecture> selectClassList(String userNo) {
		return tDao.selectClassList(userNo, sqlSession);
	}
	
	
	/**
	 * @author WooJoo
	 * 조회할 후기의 개수 조회 
	 */
	@Override
	public int selectReviewCount(HashMap<String, String> map) {
		return tDao.selectReviewCount(map, sqlSession);
	}


	/**
	 * @author WooJoo
	 * 후기 목록 조회 
	 */
	@Override
	public ArrayList<Survey> selectReviewList(PageInfo pi, HashMap<String, String> map) {
		return tDao.selectReviewList(pi, map, sqlSession);
	}
	
	
	/**
	 * @author WooJoo
	 * 후기 상세 내용 조회
	 */
	@Override
	public Survey selectReviewDetail(int sno) {
		return tDao.selectReviewDetail(sno, sqlSession);
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

	/**
	 * @author HeeRak
	 * 강사의 클래스 목록 수 조회
	 */
	@Override
	public int selectLectureListCount(int userNo) {
		return tDao.selectLectureListCount(userNo, sqlSession);
	}
	
	/**
	 * @author HeeRak
	 * 강사의 클래스정보 목록 조회
	 */
	@Override
	public ArrayList<Lecture> selectLectureByTeacher(int userNo, PageInfo pi) {
		return tDao.selectLectureByTeacher(userNo, pi, sqlSession);
	}


	/**
	 * @author HeeRak
	 * 강사 클래스 펀딩 수락
	 */
	@Override
	public int startFunding(Lecture l) {
		return tDao.startFunding(l, sqlSession);
	}


	/**
	 * @author HeeRak
	 * 강사 클래스 삭제
	 */
	@Override
	public int deleteLecture(Lecture l) {
		return tDao.deleteLecture(l, sqlSession);
	}


}

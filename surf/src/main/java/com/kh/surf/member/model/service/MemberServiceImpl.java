package com.kh.surf.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.lecture.model.vo.Chapter;
import com.kh.surf.lecture.model.vo.ClassStuding;
import com.kh.surf.lecture.model.vo.ClassVideo;
import com.kh.surf.member.model.dao.MemberDao;
import com.kh.surf.member.model.vo.Member;
import com.kh.surf.teacher.model.vo.Teacher;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}

	@Override
	public int idCheck(String userId) {
		return mDao.idCheck(sqlSession, userId);
	}

	@Override
	public int updateMemInfo(Member m) {
		return mDao.updateMemInfo(sqlSession, m);
	}

	@Override
	public int updateMemPwd(Member m) {
		return mDao.updateMemPwd(sqlSession, m);
	}

	@Override
	public int deleteMember(int userNo) {
		return mDao.deleteMember(sqlSession, userNo);
	}

	/**
	 * @author HeeRak
	 * 클래스 번호로 강사 정보 조회
	 */
	@Override
	public Teacher selectTeacherByClassNo(int classNo) {
		return mDao.selectTeacherByClassNo(classNo, sqlSession);
	}

	/**
	 * @author HeeRak
	 * 클래스 번호로 강의챕터목록 조회
	 */
	@Override
	public ArrayList<Chapter> selectChapterList(int classNo) {
		return mDao.selectChapterList(classNo, sqlSession);
	}

	/**
	 * @author HeeRak
	 * 클래스 번호로 강의영상목록 조회
	 */
	@Override
	public ArrayList<ClassVideo> ajaxSelectVideoList(int classNo) {
		return mDao.ajaxSelectVideoList(classNo, sqlSession);
	}

	/**
	 * @author HeeRak
	 * 마지막 영상 시청 기록
	 */
	@Override
	public int ajaxUpdateClassStuding(ClassStuding cs) {
		return mDao.ajaxUpdateClassStuding(cs, sqlSession);
	}

}

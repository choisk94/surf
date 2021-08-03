package com.kh.surf.lecture.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.dao.LectureDao;
import com.kh.surf.lecture.model.vo.Lecture;

public class LectureServiceImpl implements LectureService{

	@Autowired
	private LectureDao lDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 페이징
	 */
	@Override
	public int selectFundingCount() {
		return lDao.selectFundingCount(sqlSession);
	}

	/**
	 * @author leeyeji
	 * 펀딩 클래스 목록 조회
	 */
	@Override
	public ArrayList<Lecture> selectFundingList(PageInfo pi) {
		return lDao.selectFundingList(sqlSession, pi);
	}

}

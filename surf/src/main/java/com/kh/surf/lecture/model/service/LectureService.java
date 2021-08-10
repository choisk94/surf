package com.kh.surf.lecture.model.service;

import java.util.ArrayList;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Chapter;
import com.kh.surf.lecture.model.vo.ClassInquiry;
import com.kh.surf.lecture.model.vo.ClassIntro;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;

public interface LectureService {
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 조회용
	 */
	int selectFundingCount();
	ArrayList<Lecture> selectFundingList(PageInfo pi);
	
	/**
	 * @author leeyeji
	 * 클래스 목록 조회용
	 */
	int selectListCount(int sno);
	ArrayList<Lecture> selectLectureList(PageInfo pi, int sno);
	
	/**
	 * @author leeyeji
	 * 클래스 상세 조회용
	 */
	Lecture selectLecture(int classNo);
	/**
	 * @author leeyeji
	 * 클래스 소개 조회용
	 */
	ArrayList<ClassIntro> selectLectureIntro(int classNo);
	
	/**
	 * @author leeyeji
	 * 클래스 챕터 조회용
	 */
	ArrayList<Chapter> selectLectureChapter(int classNo);
	
	/**
	 * @author leeyeji
	 * 클래스 리뷰 조회용
	 */
	ArrayList<Survey> selectLectureReview(int classNo);
	
	/**
	 * @author leeyeji
	 * 클래스 문의 조회용
	 */
	ArrayList<ClassInquiry> selectLectureInquiry(int classNo);
	
	/**
	 * @author leeyeji
	 * 유저 스크랩 목록 조회용
	 */
	int selectScrapCount(int userNo);
	ArrayList<Lecture> selectScrapList(int userNo, PageInfo pi);
	
	
	
}

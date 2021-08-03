package com.kh.surf.lecture.model.service;

import java.util.ArrayList;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.Lecture;

public interface LectureService {
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 조회용
	 */
	int selectFundingCount();
	ArrayList<Lecture> selectFundingList(PageInfo pi);

}

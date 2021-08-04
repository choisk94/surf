package com.kh.surf.lecture.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.lecture.model.vo.ClassVideo;
import com.kh.surf.lecture.model.vo.Lecture;

@Repository
public class LectureDao {
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 페이징
	 */
	public int selectFundingCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("lectureMapper.selectFundingCount");
	}
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 목록 조회
	 */
	public ArrayList<Lecture> selectFundingList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("lectureMapper.selectFundingList", null, rowBounds);
	}
	
}

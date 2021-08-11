package com.kh.surf.studyBoard.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.studyBoard.model.dao.StudyBoardDao;

@Service
public class StudyBoardServiceImpl implements StudyBoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private StudyBoardDao sbDao;
	

}

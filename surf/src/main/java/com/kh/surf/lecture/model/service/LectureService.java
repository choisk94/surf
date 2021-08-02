package com.kh.surf.lecture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.lecture.model.dao.LectureDao;

@Service
public class LectureService{
	
	@Autowired
	private LectureDao lDao;
	
}

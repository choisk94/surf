package com.kh.surf.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.member.model.dao.MemberDao;

@Service	
public class MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}

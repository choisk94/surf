package com.kh.surf.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.admin.model.dao.AdminDao;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginAdmin(Member m) {
		
		return aDao.adminLogin(sqlSession, m);
	}
	@Override
	public int insertAd(Ad a) {
		
		return aDao.insertAd(sqlSession, a);
	}

}

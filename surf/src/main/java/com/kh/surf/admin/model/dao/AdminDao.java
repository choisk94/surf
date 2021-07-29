package com.kh.surf.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.member.model.vo.Member;

@Repository
public class AdminDao {

	public Member adminLogin(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("adminMapper.adminLogin", m);
	}

	public int insertAd(SqlSessionTemplate sqlSession, Ad a) {
		
		return sqlSession.insert("AdminMapper.insertAd", a);
	}
	
	

}

package com.kh.surf.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.member.model.dao.MemberDao;
import com.kh.surf.member.model.vo.Member;

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

	
}

package com.kh.surf.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.admin.model.dao.AdminDao;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService {

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

	@Override
	public int selectListCount() {
		return aDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Ad> selectList(PageInfo pi) {
		return aDao.selectList(sqlSession, pi);
	}

	// 게시물 선택 삭제
	@Override
	public void delete(String adNo) {
		aDao.delete(sqlSession, adNo);

	}

	// 광고베너 표시
	@Override
	public void update(String adNo) {
		aDao.update(sqlSession, adNo);

	}

	@Override
	public Member selectAdmin(int userNo) {
		return aDao.selectAdmin(userNo, sqlSession);
	}

	// 광고 상세조회용
	@Override
	public int increaseCount(int adNo) {
		return aDao.increaseCount(sqlSession, adNo);
	}

	@Override
	public Ad selectAd(int adNo) {
		return aDao.selectAd(sqlSession, adNo);
	}

	@Override
	public int updateAd(Ad ad) {
		return aDao.updateAd(sqlSession, ad);
	}

	@Override
	public ArrayList<Ad> selectSearchList(PageInfo pi, HashMap<String, String> map) {
		return aDao.selectSearchList(sqlSession, pi, map);
	}

	@Override
	public int selectSearchListCount(HashMap<String, String> map) {
		return aDao.selectSearchListCount(sqlSession, map);
	}

}

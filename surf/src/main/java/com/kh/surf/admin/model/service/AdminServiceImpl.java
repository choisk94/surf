package com.kh.surf.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.admin.model.dao.AdminDao;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.admin.model.vo.PaymentList;
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
	// 회원탈퇴용
	@Override
	public void userUpdate(String userNo) {
		aDao.userUpdate(sqlSession, userNo);
		
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
	//광고 게시판 페이징
	@Override
	public int selectListCount() {
		return aDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Ad> selectList(PageInfo pi) {
		return aDao.selectList(sqlSession, pi);
	}
	
	//결제내역 게시판 페이징
	@Override
	public int selectPmListCount() {
		return aDao.selectPmListCount(sqlSession);
	}

	@Override
	public ArrayList<PaymentList> selectPmList(PageInfo pi) {
		return aDao.selectPmList(sqlSession, pi);
		
	}
	
	//회원관리 게시판 페이징
	@Override
	public int selectMemListCount() {
		return aDao.selectMemListCount(sqlSession);
	}

	@Override
	public ArrayList<Member> selectMemList(PageInfo pi) {
		return aDao.selectMemList(sqlSession, pi);
	}
	//결제관리 검색용
	@Override
	public ArrayList<PaymentList> selectSearchPayList(PageInfo pi, HashMap<String, String> map) {
		return aDao.selectSearchPayList(sqlSession, pi, map);
	}

	@Override
	public int selectSearchPayListCount(HashMap<String, String> map) {
		return aDao.selectSearchPayListCount(sqlSession, map);
	}
	//광고관리 검색용
	@Override
	public ArrayList<Ad> selectSearchList(PageInfo pi, HashMap<String, String> map) {
		return aDao.selectSearchList(sqlSession, pi, map);
	}

	@Override
	public int selectSearchListCount(HashMap<String, String> map) {
		return aDao.selectSearchListCount(sqlSession, map);
	}
	//
	@Override
	public ArrayList<Member> selectSearchMemList(PageInfo pi, HashMap<String, String> map) {
		return aDao.selectSearchMemList(sqlSession, pi, map);
	}

	@Override
	public int selectSearchMemListCount(HashMap<String, String> map) {
		return aDao.selectSearchMemListCount(sqlSession, map);
	}

	

}

package com.kh.surf.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.surf.admin.model.dao.AdminDao;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.common.model.vo.PageInfo;
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
	@Override
	public int selectListCount() {
		return aDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Ad> selectList(PageInfo pi) {
		return aDao.selectList(sqlSession, pi);
	}
	//게시물 선택 삭제
	@Override
	public void delete(String adNo) {
		aDao.delete(sqlSession, adNo);
		
	}
	//광고베너 표시
	@Override
	public void update(String adNo) {
		aDao.update(sqlSession, adNo);
			
	}

}

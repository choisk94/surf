package com.kh.surf.adminBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.adminBoard.model.dao.AdminBoardDao;
import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {

	@Autowired
	private AdminBoardDao abDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/** 공지사항 **/
	@Override
	public int selectNoticeCount() {
		return abDao.selectNoticeCount(sqlSession);
	}

	@Override
	public ArrayList<AdminBoard> selectNoticeList(PageInfo pi) {
		return abDao.selectNoticeList(sqlSession, pi);
	}

	@Override
	public int insertAdminNotice(AdminBoard ab) {
		return abDao.insertAdminNotice(sqlSession, ab);
	}

	@Override
	public int increaseCountNotice(int boardNo) {
		return abDao.increaseCountNotice(sqlSession, boardNo);
	}

	@Override
	public AdminBoard selectAdminNotice(int boardNo) {
		return abDao.selectAdminNotice(sqlSession, boardNo);
	}

	@Override
	public int deleteAdminNotice(int boardNo) {
		return abDao.deleteAdminNotice(sqlSession, boardNo);
	}

	@Override
	public int updateAdminNotice(AdminBoard ab) {
		return abDao.updateAdminNotice(sqlSession, ab);
	}

	
	
	/** FAQ **/
	@Override
	public int selectFaqCount() {
		return abDao.selectFaqCount(sqlSession);
	}

	@Override
	public ArrayList<AdminBoard> selectFaqList(PageInfo pi) {
		return abDao.selectFaqList(sqlSession, pi);
	}

	@Override
	public int insertAdminFaq(AdminBoard ab) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increaseCountFaq(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public AdminBoard selectAdminFaq(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteAdminFaq(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAdminFaq(AdminBoard ab) {
		// TODO Auto-generated method stub
		return 0;
	}


}

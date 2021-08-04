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
	
	@Override
	public int selectListCount() {
		return abDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<AdminBoard> selectList(PageInfo pi) {
		return abDao.selectList(sqlSession, pi);
	}

	@Override
	public int insertAdminBoard(AdminBoard ab) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increaseCount(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public AdminBoard selectAdminBoard(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteAdminBoard(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAdminBoard(AdminBoard ab) {
		// TODO Auto-generated method stub
		return 0;
	}

}

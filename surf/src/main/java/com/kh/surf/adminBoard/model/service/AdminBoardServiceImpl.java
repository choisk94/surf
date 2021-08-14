package com.kh.surf.adminBoard.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.adminBoard.model.dao.AdminBoardDao;
import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.teacher.model.vo.Teacher;

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
	
	@Override
	public int selectSearchNoticeListCount(HashMap<String, String> map) {
		return abDao.selectSearchNoticeListCount(sqlSession, map);
	}

	@Override
	public ArrayList<AdminBoard> selectSearchNoticeList(PageInfo pi, HashMap<String, String> map) {
		return abDao.selectSearchNoticeList(sqlSession, pi, map);
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
		return abDao.insertAdminFaq(sqlSession, ab);
	}

	@Override
	public int deleteAdminFaq(int boardNo) {
		return abDao.deleteAdminFaq(sqlSession, boardNo);
	}

	@Override
	public int updateAdminFaq(AdminBoard ab) {
		return abDao.updateAdminFaq(sqlSession, ab);
	}
	
	
	@Override
	public int selectSearchFaqListCount(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<AdminBoard> selectSearchFaqList(PageInfo pi, HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/** 강사신청 **/
	@Override
	public int selectTeacherCount() {
		return abDao.selectTeacherCount(sqlSession);
	}

	@Override
	public ArrayList<Teacher> selectTeacherList(PageInfo pi) {
		return abDao.selectTeacherList(sqlSession, pi);
	}

	@Override
	public int increaseCount(int teacherNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Teacher selectTeacher(int teacherNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateTeacher(int teaherNo) {
		// TODO Auto-generated method stub
		return 0;
	}


}

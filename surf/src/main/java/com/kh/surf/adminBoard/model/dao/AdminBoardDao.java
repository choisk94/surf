package com.kh.surf.adminBoard.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;

@Repository
public class AdminBoardDao {
	
	/** 공지사항 **/
	
	/**
	 * @param 서정연 공지사항 리스트조회 카운트(관리자)
	 * @return
	 */
	public int selectNoticeCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminBoardMapper.selectNoticeCount");
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 리스트조회(관리자)
	 * @return
	 */
	public ArrayList<AdminBoard> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminBoardMapper.selectNoticeList", null, rowBounds);
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 글등록(관리자)
	 * @return
	 */
	public int insertAdminNotice(SqlSessionTemplate sqlSession, AdminBoard ab) {
		return sqlSession.insert("adminBoardMapper.insertAdminNotice", ab);
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 상세조회 카운트(관리자)
	 * @return
	 */
	public int increaseCountNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("adminBoardMapper.increaseCountNotice", boardNo);
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 상세조회(관리자)
	 * @return
	 */
	public AdminBoard selectAdminNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("adminBoardMapper.selectAdminNotice", boardNo);
	}
	
	public int deleteAdminNotice(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("adminBoardMapper.deleteAdminNotice", boardNo);
	}
	
	public int updateAdminNotice(SqlSessionTemplate sqlSession, AdminBoard ab) {
		return sqlSession.update("adminBoardMapper.updateAdminNotice", ab);
	}
	
	public int selectSearchNoticeListCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("adminBoardMapper.selectSearchNoticeListCount", map);
	}
	
	public ArrayList<AdminBoard> selectSearchNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("adminBoardMapper.selectSearchNoticeList", map, rowBounds);

	}
	
	/** FAQ **/
	
	public int selectFaqCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminBoardMapper.selectFaqCount");
	}
	
	public ArrayList<AdminBoard> selectFaqList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminBoardMapper.selectFaqList", null, rowBounds);
	}
	
	public int insertAdminFaq(SqlSessionTemplate sqlSession, AdminBoard ab) {
		return sqlSession.insert("adminBoardMapper.insertAdminFaq", ab);
	}
	

}

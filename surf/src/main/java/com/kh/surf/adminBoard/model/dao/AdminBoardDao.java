package com.kh.surf.adminBoard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;

@Repository
public class AdminBoardDao {
	
	public int selectNoticeCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminBoardMapper.selectNoticeCount");
	}
	
	public ArrayList<AdminBoard> selectNoticeList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminBoardMapper.selectNoticeList", null, rowBounds);
	}
	
	public int selectFaqCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminBoardMapper.selectFaqCount");
	}
	
	public ArrayList<AdminBoard> selectFaqList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminBoardMapper.selectFaqList", null, rowBounds);
	}	
	

}

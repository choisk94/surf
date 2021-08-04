package com.kh.surf.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.member.model.vo.Member;

@Repository
public class AdminDao {

public Member adminLogin(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("adminMapper.adminLogin", m);
	}

	public int insertAd(SqlSessionTemplate sqlSession, Ad a) {
		
		return sqlSession.insert("adminMapper.insertAd", a);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectListCount");
	}
	
	public ArrayList<Ad> selectList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectList", null, rowBounds);
		
	}
	//게시물 선택 삭제
	public void delete(SqlSessionTemplate sqlSession, String adNo){
	    sqlSession.delete("adminMapper.delete", adNo); 
	}
	//광고베너 표시
	public void update(SqlSessionTemplate sqlSession, String adNo){
		    sqlSession.update("adminMapper.update", adNo); 
	}

	public Member selectAdmin(int userNo, SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectAdmin", userNo);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int adNo) {
		return sqlSession.update("adminMapper.increaseCount", adNo);
	}

	public Ad selectAd(SqlSessionTemplate sqlSession, int adNo) {
		return sqlSession.selectOne("adminMapper.selectAd", adNo);
	}

	public int adUpdate(SqlSessionTemplate sqlSession, Ad ad) {
		return sqlSession.update("adminMapper.adUpdate", ad);
	}

	public int updateAd(SqlSessionTemplate sqlSession, Ad ad) {
	
		return sqlSession.update("adminMapper.updateAd", ad);
	}

}
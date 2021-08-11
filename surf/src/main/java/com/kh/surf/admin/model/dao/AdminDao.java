package com.kh.surf.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.admin.model.vo.PaymentList;
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

	// 게시물 선택 삭제
	public void delete(SqlSessionTemplate sqlSession, String adNo) {
		sqlSession.delete("adminMapper.delete", adNo);
	}

	// 광고베너 표시
	public void update(SqlSessionTemplate sqlSession, String adNo) {
		sqlSession.update("adminMapper.update", adNo);
	}
	
	//회원탈퇴용
	public void userUpdate(SqlSessionTemplate sqlSession, String userNo) {
		sqlSession.update("adminMapper.userUpdate", userNo);
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

	public ArrayList<Ad> selectSearchList(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("adminMapper.selectSearchList", map, rowBounds);

	}

	public ArrayList<Ad> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("adminMapper.selectList", null, rowBounds);

	}

	//결제내역 게시판 페이징
	public int selectPmListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectPmListCount");
	}

	public ArrayList<PaymentList> selectPmList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("adminMapper.selectPmList", null, rowBounds);

	}
	//회원관리 게시판 페이징
	public int selectMemListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectMemListCount");
	}

	public ArrayList<Member> selectMemList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return (ArrayList) sqlSession.selectList("adminMapper.selectMemList", null, rowBounds);

	}
	/** @author kim
	 * 결제내역 검색
	 */
	public ArrayList<PaymentList> selectSearchPayList(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList) sqlSession.selectList("adminMapper.selectSearchPayList", map, rowBounds);
	}

	public int selectSearchPayListCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("adminMapper.selectSearchPayListCount", map);
		
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectListCount");
	}

	public int selectSearchListCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("adminMapper.selectSearchListCount", map);
	}
	/** @author kim
	 * 유저관리 검색
	 */
	public int selectSearchMemListCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("adminMapper.selectSearchListMemCount", map);
	}
	public ArrayList<Member> selectSearchMemList(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList) sqlSession.selectList("adminMapper.selectSearchMemList", map, rowBounds);
	}


	

}
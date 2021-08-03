package com.kh.surf.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.member.model.vo.Member;

@Repository
public class MemberDao {

	
	/** @author 최서경
	 * 회원 로그인
	 */
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return  sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	/** @author 최서경
	 * 회원가입
	 */
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	/** @author 최서경
	 * 회원가입 아이디 중복체크
	 */
	public int idCheck(SqlSessionTemplate sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.idCheck", userId);
	}

}

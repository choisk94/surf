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

	/** @author 최서경
	 * 마이페이지 회원정보 수정
	 */
	public int updateMemInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemInfo", m);
	}
	
	/** @author 최서경
	 * 마이페이지 비밀번호 수정
	 */
	public int updateMemPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemPwd", m);
	}
	
	/** @author 최서경
	 * 회원탈퇴
	 */
	public int deleteMember(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("memberMapper.deleteMember", userNo);
	}
	
}

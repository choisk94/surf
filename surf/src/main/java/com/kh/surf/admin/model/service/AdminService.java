package com.kh.surf.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.admin.model.vo.PaymentList;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.member.model.vo.Member;

public interface AdminService {

	// 1.어드민 로그인용 서비스
	Member loginAdmin(Member m);

	int insertAd(Ad a);

	// 2. 광고 게시판 리스트 페이지 조회용
	int selectListCount();

	ArrayList<Ad> selectList(PageInfo pi);
	
	//2-1. 결제내역 게시판 리스트 페이지 조회용
	int selectPmListCount();

	ArrayList<PaymentList> selectPmList(PageInfo pi);
	
	//2-2 회원관리 게시판 리스프 페이지 조회용
	int selectMemListCount();

	ArrayList<Member> selectMemList(PageInfo pi);

	// 3.게시물 선택 삭제
	void delete(String adNo);

	// 4.광고베너 표시
	void update(String adNo);

	// 5.관리자페이지 이동
	Member selectAdmin(int userNo);

	// 6.광고 상세조회용
	int increaseCount(int adNo);

	Ad selectAd(int adNo);

	// 7.광고 수정용
	int updateAd(Ad ad);

	// 8.광고게시판 검색용
	ArrayList<Ad> selectSearchList(PageInfo pi, HashMap<String, String> map);

	int selectSearchListCount(HashMap<String, String> map);

	//8-1.결제내역 게시판 검색용
	ArrayList<PaymentList> selectSearchPayList(PageInfo pi, HashMap<String, String> map);
	
	int selectSearchPayListCount(HashMap<String, String> map);
	
	//8-2.회원관리 게시판 검색용
	ArrayList<Member> selectSearchMemList(PageInfo pi, HashMap<String, String> map);

	int selectSearchMemListCount(HashMap<String, String> map);
	
	//9.회원탈퇴용
	void userUpdate(String userNo);

	
	
	
	

}

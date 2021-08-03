package com.kh.surf.admin.model.service;

import java.util.ArrayList;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.member.model.vo.Member;


public interface AdminService {

	//어드민 로그인용 서비스
		Member loginAdmin(Member m);

		int insertAd(Ad a);
		
		// 1. 게시판 리스트 페이지 조회용 (페이징)
		int selectListCount();
		ArrayList<Ad> selectList(PageInfo pi);
		
		//게시물 선택 삭제
		void delete(String adNo);
		//광고베너 표시
		void update(String adNo);
}
		



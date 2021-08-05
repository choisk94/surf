package com.kh.surf.adminBoard.model.service;

import java.util.ArrayList;

import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;

public interface AdminBoardService {
	
	   // 1. 공지사항 게시판 리스트 페이지 조회용 (페이징)
	   int selectNoticeCount();
	   ArrayList<AdminBoard> selectNoticeList(PageInfo pi);
	   
	   // 2. 공지사항 게시글 작성하기용
	   int insertAdminNotice(AdminBoard ab);
	   
	   // 3. 공지사항 게시글 상세조회용
	   int increaseCountNotice(int boardNo);
	   AdminBoard selectAdminNotice(int boardNo);
	   
	   // 4. 공지사항 게시글 삭제용
	   int deleteAdminNotice(int boardNo);
	   
	   // 5. 공지사항 게시글 수정용
	   int updateAdminNotice(AdminBoard ab);
	   
	   
	   
	   // 1. FAQ 게시판 리스트 페이지 조회용 (페이징)
	   int selectFaqCount();
	   ArrayList<AdminBoard> selectFaqList(PageInfo pi);
	   
	   // 2. 공지사항 게시글 작성하기용
	   int insertAdminFaq(AdminBoard ab);
	   
	   // 3. 공지사항 게시글 상세조회용
	   int increaseCountFaq(int boardNo);
	   AdminBoard selectAdminFaq(int boardNo);
	   
	   // 4. 공지사항 게시글 삭제용
	   int deleteAdminFaq(int boardNo);
	   
	   // 5. 공지사항 게시글 수정용
	   int updateAdminFaq(AdminBoard ab);
	   
}

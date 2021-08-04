package com.kh.surf.adminBoard.model.service;

import java.util.ArrayList;

import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;

public interface AdminBoardService {
	
	   // 1. 게시판 리스트 페이지 조회용 (페이징)
	   int selectListCount();
	   ArrayList<AdminBoard> selectList(PageInfo pi);
	   
	   // 2. 게시글 작성하기용
	   int insertAdminBoard(AdminBoard ab);
	   
	   // 3. 게시글 상세조회용
	   int increaseCount(int boardNo);
	   AdminBoard selectAdminBoard(int boardNo);
	   
	   // 4. 게시글 삭제용
	   int deleteAdminBoard(int boardNo);
	   
	   // 5. 게시글 수정용
	   int updateAdminBoard(AdminBoard ab);
	   
}

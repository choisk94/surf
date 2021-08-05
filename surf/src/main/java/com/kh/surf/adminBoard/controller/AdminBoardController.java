package com.kh.surf.adminBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.surf.adminBoard.model.service.AdminBoardService;
import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;

@Controller
public class AdminBoardController {
	
	@Autowired
	private AdminBoardService abService;
	
	@RequestMapping("noticeList.ad")
	public String selectList(Model model, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {

		int listCount = abService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<AdminBoard> list = abService.selectList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "adminBoard/adNoticeList";
	}

}

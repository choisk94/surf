package com.kh.surf.lecture.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;
import com.kh.surf.lecture.model.service.LectureService;
import com.kh.surf.lecture.model.vo.ClassVideo;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.member.model.vo.Member;

@Controller
public class LectureController {
	
	@Autowired
	private LectureService lService;
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 목록 조회
	 */
	@RequestMapping("funding.lec")
	public ModelAndView selectFundingList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		int listCount = lService.selectFundingCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 12);
		ArrayList<Lecture> fList = lService.selectFundingList(pi);
		
		mv.addObject("pi", pi)
		  .addObject("fList", fList)
		  .setViewName("lecture/fundingLectureList");
		return mv;
		
	}
	
	
}

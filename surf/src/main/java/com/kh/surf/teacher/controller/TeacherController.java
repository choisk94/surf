package com.kh.surf.teacher.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;
import com.kh.surf.teacher.model.service.TeacherService;
import com.kh.surf.teacher.model.vo.Teacher;

/**
 * @author 윤희락 7.26
 *
 */
@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService tService;
	
	// 로그인 기능 생기면 수정할것
	@RequestMapping("updateForm.te")
	public String selectTeacher(HttpSession session, Model model) {
		
		// userNo 임의 작성
		int userNo = 3;//Integer.parseInt((session.getAttribute("loginUser")).getUserNo);
		Teacher t = tService.selectTeacher(userNo);
		model.addAttribute("t", t);
		return "teacher/profileUpdateForm";
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 
	 */
	@RequestMapping("classReview.te")
	public ModelAndView selectReviewList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		int userNo = 3;
		
		ArrayList<Lecture> clist = tService.selectClassList(userNo);
		
		int reviewCount = tService.selectReviewCount(userNo);
		
		PageInfo pi = Pagination.getPageInfo(reviewCount, currentPage, 10, 12);
		ArrayList<Survey> rlist = tService.selectReviewList(pi, userNo);
		
		mv.addObject("clist", clist)
		  .addObject("pi", pi)
		  .addObject("rlist", rlist)
		  .setViewName("teacher/reviewListView");
		
		System.out.println(reviewCount);
		System.out.println(pi);
		System.out.println(clist);
		System.out.println(rlist);
		
		return mv;
		
		
	}
	
}

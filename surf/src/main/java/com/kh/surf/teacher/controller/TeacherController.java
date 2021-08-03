package com.kh.surf.teacher.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;

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
import com.kh.surf.lecture.model.vo.MonthlyStats;
import com.kh.surf.lecture.model.vo.Survey;
import com.kh.surf.member.model.vo.Member;
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
	
	@RequestMapping("updateForm.te")
	public String selectTeacher(HttpSession session, Model model) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		
		Teacher t = tService.selectTeacher(userNo);
		model.addAttribute("t", t);
		return "teacher/profileUpdateForm";
	}

	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 후기 목록 조회 및 페이지 반환
	 */
	@RequestMapping("classReview.te")
	public ModelAndView selectReviewList(HttpSession session, ModelAndView mv, 
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
			@RequestParam(value="cno", defaultValue="all") String cno) {
		
		
		String userNo = String.valueOf(((Member)session.getAttribute("loginUser")).getUserNo());

		HashMap<String, String> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("cno", cno);
			
		ArrayList<Lecture> clist = tService.selectClassList(userNo);
		
		int reviewCount = tService.selectReviewCount(map);
			
		PageInfo pi = Pagination.getPageInfo(reviewCount, currentPage, 10, 12);
		ArrayList<Survey> rlist = tService.selectReviewList(pi, map);
		
		mv.addObject("cno", cno)
		  .addObject("clist", clist)
		  .addObject("pi", pi)
		  .addObject("rlist", rlist)
		  .setViewName("teacher/reviewListView");

		return mv;
		
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 후기 상세 조회 및 화면 반환
	 */
	@RequestMapping("reviewDetail.te")
	public ModelAndView selectReviewDetail(ModelAndView mv, int sno) {
		
		Survey s = tService.selectReviewDetail(sno);
		mv.addObject("s", s).setViewName("teacher/reviewDetailView");
		
		return mv;
		
	}
	
	/**
	 * 강사페이지_정산내역관리_월별집계 view
	 * @param session
	 */
	@RequestMapping("monthlyStatsView.te")
	public String monthlyStatsAll(HttpSession session, Model model) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		
		ArrayList<MonthlyStats> list = tService.monthlyStatsAll(userNo);
		
		int allCount = 0;
		for(int i=0; i<list.size(); i++) {
			allCount += list.get(i).getLoan();
		}
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		
		ArrayList<Lecture> clist = tService.selectTeacherClassAll(userNo);
		
		model.addAttribute("allCount", formatter.format(allCount));
		model.addAttribute("list", list);
		model.addAttribute("clist", clist);
		return "teacher/monthlySettlement";
	}
}

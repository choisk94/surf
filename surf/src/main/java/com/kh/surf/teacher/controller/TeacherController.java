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
import com.kh.surf.lecture.model.vo.ClassInquiry;
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
	
	/**
	 * 강사 수정입력 폼 view 페이지 반환
	 * @author HeeRak
	 */
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
		
		// 2번 써서 따로 저장함
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
	
	/**
	 * 강사_ 클래스 목록 조회
	 * @return 강사의 클래스 목록 페이지 정보
	 */
	@RequestMapping("lectureList.te")
	public ModelAndView selectLectureByTeacher(HttpSession session,
											   @RequestParam(value="currentPage", defaultValue="1")int currentPage,
											   ModelAndView mv) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		int listCount = tService.selectLectureListCount(userNo);
		
		PageInfo pi = new Pagination().getPageInfo(listCount, currentPage, 5, 4);
		ArrayList<Lecture> list = tService.selectLectureByTeacher(userNo, pi);
		
		if(!list.isEmpty()) {
			mv.addObject("list", list)
			  .addObject("pi", pi)
			  .addObject("listCount", listCount)
			  .setViewName("teacher/teacherLectureList");		
		}else {
			mv.addObject("errorMsg", "클래스 목록조회 실패")
			  .setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/**
	 * 클래스 삭제(강사)
	 * @return 클래스 삭제요청결과
	 */
	@RequestMapping("deleteLecture.te")
	public String deleteLecture(HttpSession session, int classNo, int currentPage) {
		
		Lecture l = new Lecture();
		l.setClassNo(classNo);
		l.setUserNo(((Member)session.getAttribute("loginUser")).getUserNo());
		
		int result = tService.deleteLecture(l);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "클래스 삭제 성공");
		}else {
			session.setAttribute("alertMsg", "클래스 삭제 실패");
		}
		
		return "redirect:/lectureList.te?currentPage=" + currentPage;
	}
	
	/**
	 * 클래스 펀딩승인(강사)
	 * @return 클래스 펀딩처리 결과
	 */
	@RequestMapping("startFunding.te")
	public String startFunding(HttpSession session, int classNo, int currentPage) {
		
		Lecture l = new Lecture();
		l.setClassNo(classNo);
		l.setUserNo(((Member)session.getAttribute("loginUser")).getUserNo());
		
		int result = tService.startFunding(l);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "클래스 펀딩승인 성공");
		}else {
			session.setAttribute("alertMsg", "클래스 펀딩승인 실패");
		}
		
		return "redirect:/lectureList.te?currentPage=" + currentPage;
	}
	
	/**
	 * LectureinputView
	 * @return 페이지 및 클래스 정보
	 */
	@RequestMapping("lectureInput.le")
	public ModelAndView inputLecture(HttpSession session, 
									 @RequestParam(value="currentPage", defaultValue="1")int currentPage,
									 @RequestParam(value="classNo", defaultValue="0") int classNo,
									 ModelAndView mv) {
		if(classNo == 0) { // 등록하기
			
			mv.setViewName("teacher/lectureInputForm0");
			
		}else { // 수정하기
			
			switch(currentPage){
				case 0 : mv.setViewName("teacher/lectureInputForm0"); break;
				case 1 : mv.setViewName("teacher/lectureInputForm1"); break;
				case 2 : mv.setViewName("teacher/lectureInputForm2"); break;
				case 3 : mv.setViewName("teacher/lectureInputForm3"); break;
				case 4 : mv.setViewName("teacher/lectureInputForm4"); break;
			}
		}
		
		return mv;
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 문의 목록 조회 및 페이지 반환
	 */
	@RequestMapping("classInquiry.te")
	public ModelAndView selectInquiryList(HttpSession session, ModelAndView mv, 
			@RequestParam(value="currentPage", defaultValue="1") int currentPage,
			@RequestParam(value="cno", defaultValue="all") String cno,
			@RequestParam(value="condition", defaultValue="all") String condition) {
		
		String userNo = String.valueOf(((Member)session.getAttribute("loginUser")).getUserNo());

		HashMap<String, String> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("cno", cno);
		map.put("condition", condition);
			
		ArrayList<Lecture> clist = tService.selectClassList(userNo);
		
		int inquiryCount = tService.selectInquiryCount(map);
		
		PageInfo pi = Pagination.getPageInfo(inquiryCount, currentPage, 10, 12);
		ArrayList<ClassInquiry> ilist = tService.selectInquiryList(pi, map);

		mv.addObject("cno", cno)
		  .addObject("condition", condition)
		  .addObject("clist", clist)
		  .addObject("pi", pi)
		  .addObject("ilist", ilist)
		  .setViewName("teacher/inquiryListView");

		return mv;
		
	}
	
}

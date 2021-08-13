package com.kh.surf.teacher.controller;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 문의 상세 조회 및 화면 반환
	 */
	@RequestMapping("inquiryDetail.te")
	public ModelAndView selectInquiryDetail(ModelAndView mv, int ino) {
		
		ClassInquiry i = tService.selectInquiryDetail(ino);
		mv.addObject("i", i).setViewName("teacher/inquiryDetailView");
		
		return mv;
		
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 답변 등록
	 */
	@RequestMapping("insertAnswer.te")
	public String updateNewAnswer(ClassInquiry i, Model model) {
		
		int result = tService.updateNewAnswer(i);
		
		if(result > 0) {
			return "redirect:inquiryDetail.te?ino=" + i.getInquiryNo();
			
		}else {
			model.addAttribute("errorMsg", "답변 작성을 실패했습니다.");
			return "redirect:inquiryDetail.te?ino=" + i.getInquiryNo();
		}
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 답변 수정 화면 반환
	 */
	@RequestMapping("updateAnsForm.te")
	public String updateAnsForm(int ino, Model model) {
		
		model.addAttribute("i", tService.selectInquiryDetail(ino));
		return "teacher/ansUpdateForm";
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 답변 수정
	 */
	@RequestMapping("updateAnswer.te")
	public String updateOldAnswer(ClassInquiry i, Model model) {

		int result = tService.updateOldAnswer(i);
		
		if(result > 0) {
			return "redirect:inquiryDetail.te?ino=" + i.getInquiryNo();
			
		}else {
			model.addAttribute("errorMsg", "답변 수정을 실패했습니다.");
			return "redirect:inquiryDetail.te?ino=" + i.getInquiryNo();
		}
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 답변 삭제
	 */
	@RequestMapping("deleteAnswer.te")
	public String deleteAnswer(int ino, HttpSession session, Model model) {

		int result = tService.deleteAnswer(ino);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "답변이 성공적으로 삭제되었습니다.");
			return "redirect:inquiryDetail.te?ino=" + ino;
			
		}else {
			model.addAttribute("errorMsg", "답변 삭제를 실패했습니다.");
			return "redirect:inquiryDetail.te?ino=" + ino;
		}
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 수강 통계 화면 반환
	 */
	@RequestMapping("studyStats.te")
	public ModelAndView selectStudyStats(HttpSession session, ModelAndView mv) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy. MM. dd. HH:mm 기준");
		String selectTime = format.format(System.currentTimeMillis());

		String userNo = String.valueOf(((Member)session.getAttribute("loginUser")).getUserNo());
		ArrayList<Lecture> clist = tService.selectClassList(userNo);
		
		mv.addObject("selectTime", selectTime)
		  .addObject("clist", clist)
		  .setViewName("teacher/studyStatsView");

		return mv;
	}
	
	/**
	 * @author: Woojoo Seo
	 * @MethodInfo: 설문 조사 통계 화면 반환
	 */
	@RequestMapping("surveyStats.te")
	public ModelAndView selectSurveyStats(HttpSession session, ModelAndView mv,
			@RequestParam(value="cno", defaultValue="all") String cno) {
		
		String userNo = String.valueOf(((Member)session.getAttribute("loginUser")).getUserNo());

		HashMap<String, String> map = new HashMap<>();
		map.put("userNo", userNo);
		map.put("cno", cno);
		
		ArrayList<Lecture> clist = tService.selectClassList(userNo);
		
		mv.addObject("cno", cno)
		  .addObject("clist", clist)
		  .setViewName("teacher/surveyStatsView");

		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 강사 신청
	 */
	/*
	@RequestMapping("enrollTeacher.tea")
	public String enrollTeacher() {
		return "member/applyTeacherForm";
	}
	@RequestMapping("apply.tea")
	public String applyTeacher(Teacher t, MultipartFile upfile, HttpSession session, Model model) {
		
		if(!upfile.getOriginalFilename().contentEquals("")) { // 첨부파일이 있을 경우!
			
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/profile_image/");
			String originName = upfile.getOriginalFilename();
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			int ranNum = (int)(Math.random() * 90000 + 10000);
			String ext = originName.substring(originName.lastIndexOf(".")); // .의 인덱스를 알아내서 확장자 뽑아넣기
						
			String changeName = currentTime + ranNum + ext; // 하나로 합치기
						
			try {
				upfile.transferTo(new File(savePath + changeName));// 어떤 경로에 어떤 이름으로 업로드 시키는지 transferTo 메소드로 제시
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			t.setProfileImage("resources/uploadFiles/profile_image/" + changeName); // "resources/uploadFiles/2021070217013612342.jpg"
			
		}
		
		int result = tService.applyTeacher(t);
		System.out.print(t);
		
		if(result > 0) { // 성공 => 게시글 리스트 페이지
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			return "redirect:enrollTeacher.tea";
		}else { // 실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
	}*/
		

}

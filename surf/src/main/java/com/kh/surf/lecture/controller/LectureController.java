package com.kh.surf.lecture.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;
import com.kh.surf.lecture.model.service.LectureService;
import com.kh.surf.lecture.model.vo.Chapter;
import com.kh.surf.lecture.model.vo.ClassInquiry;
import com.kh.surf.lecture.model.vo.ClassIntro;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.Survey;

@Controller
public class LectureController {
	
	@Autowired
	private LectureService lService;
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 페이징
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
	
	/**
	 * @author leeyeji
	 * 펀딩 상세 조회
	 */
	@ResponseBody
	@RequestMapping("fundingDetail.lec")
	public Lecture selectFundingDetail(int cno) {
		Lecture f = lService.selectFundingDetail(cno);
		//System.out.print(f);
		return f;
	}
	
	/**
	 * @author leeyeji
	 * 펀딩 클래스 응원하기
	 */
	@ResponseBody
	@RequestMapping("support.lec")
	public int ajaxSupportLecture(int cno, int userNo) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("classNo", cno);
		map.put("userNo", userNo);
		int result = lService.ajaxSupportLecture(map);
		return result;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 목록 페이징
	 * 클래스 목록 조회
	 */
	// 이친구를 고쳐야 한다
	@RequestMapping("list.lec")
	public ModelAndView selectLectureList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage
										  , int sno) {
		
		int listCount = lService.selectListCount(sno);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 9);
		ArrayList<Lecture> list = lService.selectLectureList(pi, sno);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("lecture/lectureList");
		
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 상세 조회
	 */
	@RequestMapping("detail.lec")
	public ModelAndView selectLecture(ModelAndView mv, int cno) {
		Lecture l = lService.selectLecture(cno);
		ArrayList<ClassIntro> cList = lService.selectLectureIntro(cno);
		mv.addObject("l", l)
		  .addObject("c", cList)
		  .setViewName("lecture/lectureDetailView");
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 챕터 조회
	 */
	@RequestMapping("chapter.lec")
	public ModelAndView selectLectureChapter(ModelAndView mv, int cno, String cti) {
		ArrayList<Chapter> tList = lService.selectLectureChapter(cno);
		mv.addObject("tList", tList)
		  .addObject("title", cti)
		  .setViewName("lecture/detailChapter");
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 수강후기 조회
	 */
	@RequestMapping("review.lec")
	public ModelAndView selectLectureReview(ModelAndView mv, int cno) {
		ArrayList<Survey> sList = lService.selectLectureReview(cno);
		mv.addObject("sList", sList).setViewName("lecture/detailReview");
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 수강문의 조회 
	 */
	@RequestMapping("inquiry.lec")
	public ModelAndView selectLectureInquiry(ModelAndView mv, int cno) {
		ArrayList<ClassInquiry> iList = lService.selectLectureInquiry(cno);
		int teacherNo = lService.selectTeacherNo(cno);
		mv.addObject("iList", iList)
		  .addObject("classNo", cno)
		  .addObject("teacherNo", teacherNo)
		  .setViewName("lecture/detailInquiry");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="inquiCheck.lec", produces="application/json; charset=utf-8")
	public String ajaxSelectInquiry(int classNo) {
		ArrayList<ClassInquiry> list = lService.selectLectureInquiry(classNo);
		return new Gson().toJson(list);
	}
	
	
	/**
	 * @author leeyeji
	 * 클래스 수강 문의 등록
	 */
	@ResponseBody
	@RequestMapping("enrollInquiry.lec")
	public String ajaxEnrollInquiry(ClassInquiry i) {
		//System.out.print(i);
		int result = lService.ajaxEnrollInquiry(i);
		return result>0?"success":"fail";
	}
	
	/**
	 * @author leeyeji
	 * 유저 찜한 클래스 목록
	 */
	@RequestMapping("scrapList.lec")
	public ModelAndView selectScrapList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage, int uno) {
		System.out.print(uno);
		int listCount = lService.selectScrapCount(uno);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 4, 12);
		ArrayList<Lecture> sList = lService.selectScrapList(uno, pi);
		
		mv.addObject("sList", sList)
		  .addObject("pi", pi)
		  .setViewName("member/scrapLectureList");
		
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 찜하기 중복 확인 
	 */
	@ResponseBody
	@RequestMapping("scrapCheck.lec")
	public int scrapCheck(int classNo, int userNo) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("classNo", classNo);
		map.put("classNo", classNo);
		int result = lService.scrapCheck(map);
		//System.out.print(result);
		return result;
	}
	
	/**
	 * @author leeyeji
	 * 클래스 찜하기 
	 */
	@ResponseBody
	@RequestMapping(value="scrap.lec")
	public int ajaxScrapLecture(int userNo, int classNo) {
		HashMap<String, Integer> map = new HashMap<>();
		map.put("classNo", classNo);
		map.put("userNo", userNo);		
		int result = lService.ajaxScrapLecture(map);
		return result;
	}
	
	/**
	 * @author leeyeji
	 * 내 클래스 조회
	 */
	@RequestMapping("progress.lec")
	public ModelAndView selectMyLecture(int uno, ModelAndView mv) {
		ArrayList<Lecture> mList = lService.selectMyLecture(uno);
		mv.addObject("mList", mList).setViewName("member/myLectureList");
		return mv;
	}
	
	/**
	 * @author leeyeji
	 * 설문조사 추가
	 */
	@ResponseBody
	@RequestMapping("survey.lec")
	public int insertSurvey(Survey s) {
		System.out.println("s");
		int result = lService.insertSurvey(s);
		return result;
	}
	
	
	
	
	
	
	
}

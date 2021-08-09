package com.kh.surf.adminBoard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.adminBoard.model.service.AdminBoardService;
import com.kh.surf.adminBoard.model.vo.AdminBoard;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;

@Controller
public class AdminBoardController {
	
	@Autowired
	private AdminBoardService abService;
	
	/**
	 * @param 서정연
	 * @param 공지사항 리스트조회(관리자)
	 * @return
	 */
	@RequestMapping("noticeList.ad")
	public ModelAndView selectList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {

		int listCount = abService.selectNoticeCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<AdminBoard> list = abService.selectNoticeList(pi);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("adminBoard/adNoticeList");
		
		return mv;
	}
	
	/**
	 * @return 공지사항 글등록페이지(관리자) 
	 */
	@RequestMapping("enrollNotice.ad")
	public String enrollNotice() {
		return "adminBoard/adNoticeEnroll";
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 글등록하기(관리자)
	 * @param 
	 * @return
	 */
	@RequestMapping("insertNotice.ad")
	public String insertNotice(AdminBoard ab, HttpSession session, Model model) {
		
		  int result = abService.insertAdminNotice(ab);
	      
	      if(result > 0) { // 성공 => 게시글 리스트페이지
	         session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
	         return "redirect:noticeList.ad";
	      }else { // 실패 => 에러페이지
	         model.addAttribute("errorMsg", "게시글 등록 실패");
	         return "common/errorPage";
	      }
		
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 상세조회(관리자)
	 * @return
	 */
	@RequestMapping("detailNotice.ad")
	public ModelAndView selectAdminNotice(int bno, ModelAndView mv) {
		int result = abService.increaseCountNotice(bno);
		
		if(result > 0) {
			AdminBoard ab = abService.selectAdminNotice(bno);
			mv.addObject("ab", ab).setViewName("adminBoard/adNoticeDetail");
		}else {
			mv.addObject("errorMsg", "상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	/**
	 * @param 서정연
	 * @param FAQ페이지(관리자)
	 * @return
	 */
	@RequestMapping("faqList.ad")
	public String selectListFaq(Model model, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {

		int listCount = abService.selectFaqCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<AdminBoard> list = abService.selectFaqList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "adminBoard/adFaqList";
	}

}

package com.kh.surf.adminBoard.controller;

import java.util.ArrayList;
import java.util.HashMap;

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
import com.kh.surf.teacher.model.vo.Teacher;


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
	 * @param 공지사항 글삭제
	 * @param 
	 * @return
	 */
	@RequestMapping("deleteNotice.ad")
	public String deleteAdminNotice(int bno, Model model, HttpSession session) {
		
		int result = abService.deleteAdminNotice(bno);
		
		if(result > 0) { // 성공 => 리스트페이지
			
			session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
			return "redirect:noticeList.ad";
			
		}else { // 실패
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
	
	}
	
	@RequestMapping("updateFormNotice.ad")
	public String updateFormAdminNotice(int bno, Model model) {
		
		model.addAttribute("ab", abService.selectAdminNotice(bno));
		return "adminBoard/adNoticeModify";
		
	}
	
	/**
	 * @param 서정연
	 * @param 공지사항 글수정
	 * @param 
	 * @return
	 */
	@RequestMapping("updateNotice.ad")
	public String updateAdminNotice(AdminBoard ab, Model model, HttpSession session) {
		int result = abService.updateAdminNotice(ab);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
			return "redirect:detailNotice.ad?bno=" + ab.getBoardNo();
		}else {
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorPage";
		}
	}
	
	
	@RequestMapping("searchNotice.ad")
	public ModelAndView selectSearchNoticeList(ModelAndView mv,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, String condition,
			String keyword) {

		HashMap<String, String> map = new HashMap<>();
		map.put("condition", condition);
		map.put("keyword", keyword);

		int listCount = abService.selectSearchNoticeListCount(map);

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<AdminBoard> list = abService.selectSearchNoticeList(pi, map);

		mv.addObject("pi", pi).addObject("list", list).addObject("condition", condition).addObject("keyword", keyword)
				.setViewName("adminBoard/adNoticeList");

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
	

	/**
	 * @param 서정연
	 * @param FAQ 글작성 (관리자)
	 * @param 
	 * @return
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	/**********************************************************************************/
	
	@RequestMapping("list.no")
	public ModelAndView selectNoticeList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {

		int listCount = abService.selectNoticeCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<AdminBoard> list = abService.selectNoticeList(pi);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("adminBoard/noticeBoardList");
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@RequestMapping("insertFaq.ad")
	public String enrollFaq(AdminBoard ab, HttpSession session, Model model) {
		
        int result = abService.insertAdminFaq(ab);
        
        if(result > 0) { // 성공 => 게시글 리스트페이지
           session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
           return "redirect:faqList.ad";
        }else { // 실패 => 에러페이지
           model.addAttribute("errorMsg", "게시글 등록 실패");
           return "common/errorPage";
        }
		
	}
	
	/**
	 * @param 서정연
	 * @param FAQ 글삭제 (관리자)
	 * @param 
	 * @return
	 */
	@RequestMapping("deleteFaq.ad")
	public String deleteAdminFaq(int bno, Model model, HttpSession session) {
		int result = abService.deleteAdminFaq(bno);
		if(result > 0) { // 성공 => 리스트페이지
			
			session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
			return "redirect:faqList.ad";
			
		}else { // 실패
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorPage";
		}
		
	}

	
	/**
	 * @param 서정연
	 * @param FAQ 글수정 (관리자)
	 * @param 
	 * @return
	 */
	@RequestMapping("updateFaq.ad")
	public String updateAdminFaq(AdminBoard ab, Model model, HttpSession session) {
		int result = abService.updateAdminFaq(ab);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
			return "redirect:faqList.ad?bno=" + ab.getBoardNo();
		}else {
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorPage";
		}
	}

	
	@RequestMapping("teacherList.ad")
	public ModelAndView selectTeacherList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		int listCount = abService.selectTeacherCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<Teacher> list = abService.selectTeacherList(pi);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("adminBoard/adTeacherList");
		
		return mv;
	}	
	


}

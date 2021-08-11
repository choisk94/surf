package com.kh.surf.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.admin.model.service.AdminService;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.admin.model.vo.PaymentList;
import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;
import com.kh.surf.member.model.vo.Member;

@Controller
public class AdminController {

	@Autowired
	private AdminService aService;

	//광고게시판 리스트조회
	@RequestMapping("list.bo")
	public ModelAndView selectList(ModelAndView mv,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		int listCount = aService.selectListCount();

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<Ad> list = aService.selectList(pi);

		mv.addObject("pi", pi).addObject("list", list).setViewName("admin/ad");

		return mv;

	}
	//결제내역 리스트조회
	@RequestMapping("pmList.ad")
	public ModelAndView selectPmList(ModelAndView mv,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		
		int listCount = aService.selectPmListCount();

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<PaymentList> list = aService.selectPmList(pi);

		mv.addObject("pi", pi).addObject("list", list).setViewName("admin/paymentDetailsCheck");

		return mv;

	}
	//회원관리 리스트조회
		@RequestMapping("memList.ad")
		public ModelAndView selectmemList(ModelAndView mv,
				@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
			
			int listCount = aService.selectMemListCount();

			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
			ArrayList<Member> list = aService.selectMemList(pi);

			mv.addObject("pi", pi).addObject("list", list).setViewName("admin/userManagement");

			return mv;

		}
	// 관리자 페이지 이동
	@RequestMapping("login.ad")
	public String selectTeacher(HttpSession session, Model model) {

		int userNo = ((Member) session.getAttribute("loginUser")).getUserNo();

		Member m = aService.selectAdmin(userNo);
		model.addAttribute("m", m);
		return "redirect:list.bo";
	}

	@RequestMapping("detail.ad")
	public ModelAndView selectBoard(int bno, ModelAndView mv) {
		int result = aService.increaseCount(bno);

		if (result > 0) {
			Ad ad = aService.selectAd(bno);
			mv.addObject("Ad", ad).setViewName("admin/adDeteilView");
		} else {
			mv.addObject("errorMsg", "상세조회 실패").setViewName("common/errorPage");

		}
		return mv;
	}

	// 게시물 선택삭제
	@RequestMapping("delete")
	public String ajaxTest(HttpServletRequest request) throws Exception {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
			aService.delete(ajaxMsg[i]);
		}
		return "redirect:list.bo";
	}

	// 광고베너 표시
	@RequestMapping("update")
	public String ajaxTest2(HttpServletRequest request) throws Exception {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
			aService.update(ajaxMsg[i]);
		}
		return "redirect:list.bo";
	}
	// 회원탈퇴용
	@RequestMapping("userUpdate")
	public String ajaxTest3(HttpServletRequest request) throws Exception {

		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
			aService.userUpdate(ajaxMsg[i]);
		}
		return "redirect:memList.ad";
	}

	// 광고 수정
	@RequestMapping("updateForm.ad")
	public String updateForm(int bno, Model model) {

		model.addAttribute("Ad", aService.selectAd(bno));
		return "admin/adUpdateForm";
	}

	@RequestMapping("adUpdate.ad")
	public String updateAd(Ad ad, MultipartFile reupfile, HttpSession session, Model model) {

		// 새로 넘어온 첨부파일이 있을 경우
		if (!reupfile.getOriginalFilename().equals("")) {
			// 기존에 첨부파일이 있었을 경우 => 기존의 첨부파일 지우기
			if (ad.getOriginName() != null) {
				new File(session.getServletContext().getRealPath(ad.getChangeName())).delete();
			}

			// 새로넘어온 첨부파일 서버 업로드 시키기
			String changeName = saveFile(session, reupfile);
			// b에 새로 넘어온 첨부파일에 대한 정보 담기
			ad.setOriginName(reupfile.getOriginalFilename());
			ad.setChangeName("resources/uploadFiles/" + changeName);
		}

		int result = aService.updateAd(ad);

		if (result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
			return "redirect:detail.ad?bno=" + ad.getAdNo();
		} else {
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorPage";
		}

	}

	// 광고게시판 검색 기능용
	@RequestMapping("search.ad")
	public ModelAndView selectSearchList(ModelAndView mv,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, String condition,
			String keyword) {

		HashMap<String, String> map = new HashMap<>();
		map.put("condition", condition);
		map.put("keyword", keyword);

		int listCount = aService.selectSearchListCount(map);

		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		ArrayList<Ad> list = aService.selectSearchList(pi, map);

		mv.addObject("pi", pi).addObject("list", list).addObject("condition", condition).addObject("keyword", keyword)
				.setViewName("admin/ad");

		return mv;

	}
	// 결제내역 검색 기능용
		@RequestMapping("paySearch.ad")
		public ModelAndView selectSearchPayList(ModelAndView mv,
				@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, String condition,
				String keyword) {

			HashMap<String, String> map = new HashMap<>();
			map.put("condition", condition);
			map.put("keyword", keyword);
			

			int listCount = aService.selectSearchPayListCount(map);
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
			ArrayList<PaymentList> list = aService.selectSearchPayList(pi, map);
			
			mv.addObject("pi", pi).addObject("list", list).addObject("condition", condition).addObject("keyword", keyword)
					.setViewName("admin/paymentDetailsCheck");

			return mv;

	}
	
	  // 유저관리 검색 기능용
	  
	  @RequestMapping("userSearch.ad") 
	  public ModelAndView selectSearchMemList(ModelAndView mv,
	  
	  @RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
	  String condition, String keyword) {
	  
	  HashMap<String, String> map = new HashMap<>(); map.put("condition",
	  condition); map.put("keyword", keyword);
	  
	  int listCount = aService.selectSearchMemListCount(map);
	  
	  PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
	  ArrayList<Member> list = aService.selectSearchMemList(pi, map);
	  
	  mv.addObject("pi", pi).addObject("list", list).addObject("condition",
	  condition).addObject("keyword", keyword)
	  .setViewName("admin/userManagement");
	  
	  return mv;
	  
	  }
	 
	 
	

	@RequestMapping("logout.ad")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "admin/adminLogin";
	}

	@RequestMapping("adEnroll.ad")
	public String adEnroll() {

		return "admin/adEnroll";

	}

	@RequestMapping("lectureManagement.do")
	public String lectureManagement() {

		return "admin/lectureManagement";
	}

	@RequestMapping("settlementDetails.do")
	public String settlementDetails() {

		return "admin/settlementDetails";
	}

	@RequestMapping("paymentDetailsCheck.do")
	public String paymentDetailsCheck() {

		return "admin/paymentDetailsCheck";
	}

	@RequestMapping("userManagement.do")
	public String userManagement() {

		return "admin/userManagement";
	}

	@RequestMapping("classDetailedInquiry.do")
	public String classDetailedInquiry() {

		return "admin/classDetailedInquiry";
	}

	@RequestMapping("classFundingManagement.do")
	public String classFundingManagement() {

		return "admin/classFundingManagement";
	}

	@RequestMapping("insert.ad")
	public String insertAdmin(Ad a, MultipartFile upfile, HttpSession session, Model model) {

		if (!upfile.getOriginalFilename().equals("")) {

			String changeName = saveFile(session, upfile);
			a.setOriginName(upfile.getOriginalFilename());
			a.setChangeName("resources/uploadFiles/ad_upfiles/" + changeName);

		}

		int result = aService.insertAd(a);

		if (result > 0) { // 성공 => 게시글 리스트페이지
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			return "redirect:list.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}

	}

	public String saveFile(HttpSession session, MultipartFile upfile) {

		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

		String originName = upfile.getOriginalFilename();
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int) (Math.random() * 90000 + 10000);
		String ext = originName.substring(originName.lastIndexOf("."));

		String changeName = currentTime + ranNum + ext;

		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return changeName;

	}
}

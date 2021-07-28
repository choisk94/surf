package com.kh.surf.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.surf.admin.model.service.AdminService;
import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.member.model.vo.Member;

@Controller
public class AdminController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping("ad.do")
	public String  ad() {
		
		return "admin/ad";
		
	}
	@RequestMapping("admin.ad")
	public String  adminLogin() {
		
		return "admin/adminLogin";
		
	}
	
	@RequestMapping("login.ad")
	public String adminLogin(Model model, Member m, HttpSession session) {
		
		Member adminLogin = aService.loginAdmin(m);
		
		if(adminLogin == null) {
			
			model.addAttribute("errorMsg", "로그인 오류");
			return "common/errorPage";
		}else {
			
			session.setAttribute("adminLogin", adminLogin);
			return "admin/ad";
		}
		
		
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
	public void insertAdmin(Ad a, MultipartFile upfile, HttpSession session, Model model) {
		
		if(!upfile.getOriginalFilename().equals("")) {
			
	
			String changeName = saveFile(session, upfile); // "2021070217013023152.jpg"
			a.setOriginName(upfile.getOriginalFilename());
			a.setChangeName("resources/uploadFiles/" + changeName); // "resources/uploadFiles/2021070217013023152.jpg"
			
		}
		
		int result = aService.insertAd(a);
		
		if(result > 0) { // 성공 => 게시글 리스트페이지
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			return "redirect:list.bo";
		}else { // 실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
		
	}
	public String saveFile(HttpSession session, MultipartFile upfile) {
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		String originName = upfile.getOriginalFilename();
		// 20210702170130(년월일시분초) + 23152(랜덤값) + .jpg(원본파일확장자)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random() * 90000 + 10000);
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

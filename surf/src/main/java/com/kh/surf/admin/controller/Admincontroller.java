package com.kh.surf.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admincontroller {

	@RequestMapping("ad.do")
	public String  ad() {
		
		return "admin/ad";
		
	}
	@RequestMapping("admin.do")
	public String adminLogin() {
		
		return "admin/adminLogin";
		
	}
	@RequestMapping("adEnroll.do")
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
}

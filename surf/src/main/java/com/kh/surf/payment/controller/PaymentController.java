package com.kh.surf.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.common.template.Pagination;
import com.kh.surf.member.model.vo.Member;
import com.kh.surf.payment.model.service.PaymentService;
import com.kh.surf.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService pService;
	
	/**
	 * @author leeyeji
	 * 주문 목록 조회용
	 */
	/*
	@RequestMapping("orderList.mem")
	public ModelAndView selectOrderList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage, HttpSession session) {
		Member m = (Member)session.getAttribute("loginUser");
		int userNo = m.getUserNo();
		int listCount = pService.selectListCount(userNo);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Payment> pList = pService.selectOrderList(userNo, pi);
		mv.addObject("pList", pList).setViewName("member/orderHistory");
		return mv;
	}
	*/
}

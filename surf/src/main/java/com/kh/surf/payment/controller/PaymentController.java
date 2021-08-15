package com.kh.surf.payment.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	/**
	 * @author leeyeji
	 * 결제 성공
	 */
	@ResponseBody
	@RequestMapping(value="payments.do", method = RequestMethod.POST)
	public int paymentSuccess(Payment p) {
		int result = pService.insertPayment(p);
		return result;
	}
	
	
	
}

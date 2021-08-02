package com.kh.surf.payment.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.surf.common.model.vo.PageInfo;
import com.kh.surf.payment.model.dao.PaymentDao;
import com.kh.surf.payment.model.vo.Payment;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDao pDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * @author leeyeji
	 * 주문 내역 페이징
	 */
	/*
	@Override
	public int selectListCount(int userNo) {
		return pDao.selectListCount(sqlSession, userNo);
	}
	*/
	
	/**
	 * @author leeyeji
	 * 주문 내역 조회
	 */
	/*
	@Override
	public ArrayList<Payment> selectOrderList(int userNo, PageInfo pi) {
		return pDao.selectOrderList(sqlSession, userNo, pi);
	}
	*/

}

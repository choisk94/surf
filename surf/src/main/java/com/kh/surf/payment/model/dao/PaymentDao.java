package com.kh.surf.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.surf.payment.model.vo.Payment;

@Repository
public class PaymentDao {
	
	/**
	 * @author leeyeji
	 * 주문 내역 페이징
	 */
	/*
	public int selectListCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("paymentMapper.selectListCount", userNo);
	}
	*/
	
	/**
	 * @author leeyeji
	 * 주문 내역 조회
	 */
	/*
	public ArrayList<Payment> selectOrderList(SqlSessionTemplate sqlSession, int userNo, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("paymentMapper.selectOrderList", userNo, rowBounds);
	}
	*/
	
	/**
	 * @author leeyeji
	 * 주문 내용 추가
	 */
	public int insertPayment(SqlSessionTemplate sqlSession, Payment p) {
		return sqlSession.insert("paymentMapper.insertPayment", p);
	}

}

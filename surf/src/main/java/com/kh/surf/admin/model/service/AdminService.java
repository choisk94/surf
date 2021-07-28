package com.kh.surf.admin.model.service;

import com.kh.surf.admin.model.vo.Ad;
import com.kh.surf.member.model.vo.Member;


public interface AdminService {

	//어드민 로그인용 서비스
	Member loginAdmin(Member m);

	int insertAd(Ad a);

}

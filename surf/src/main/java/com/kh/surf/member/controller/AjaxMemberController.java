package com.kh.surf.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.surf.lecture.model.vo.ClassStuding;
import com.kh.surf.lecture.model.vo.ClassVideo;
import com.kh.surf.member.model.service.MemberService;
import com.kh.surf.member.model.vo.Member;

@Controller
public class AjaxMemberController {
	
	@Autowired
	private MemberService mService;
	
	/** 
	 * @author HeeRak
	 * 강의 비디오 목록  
	 */
	@ResponseBody
	@RequestMapping(value="ajaxVideoList.le", produces="application/json; charset=utf-8")
	public String ajaxSelectVideoList(HttpSession session,
										int classNo) {
		
		// 비디오 목록 가져오기
		ArrayList<ClassVideo> videoList = mService.ajaxSelectVideoList(classNo);
		
		return new Gson().toJson(videoList);
	}
	
	/**
	 * @author HeeRak
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="JqAjaxLatestVideoWatching.le", produces="application/json; charset=utf-8")
	public void ajaxUpdateClassStuding(HttpSession session,
								   ClassStuding cs) {
		cs.setUserNo(((Member)session.getAttribute("loginUser")).getUserNo());
		
		// 비디오 최근 시청(클릭 기준)
		int result = mService.ajaxUpdateClassStuding(cs);
		
	}
	
}

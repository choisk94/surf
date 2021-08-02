package com.kh.surf.teacher.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.surf.common.template.SaveFile;
import com.kh.surf.lecture.model.vo.Lecture;
import com.kh.surf.lecture.model.vo.MonthlyStats;
import com.kh.surf.member.model.vo.Member;
import com.kh.surf.teacher.model.service.TeacherService;
import com.kh.surf.teacher.model.vo.Teacher;

@Controller
public class AjaxTeacherController {
	
	@Autowired
	private TeacherService tService;
	
	/**
	 * 닉네임 중복확인 ajax
	 * @param checkNc
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="ajaxNicknameCheck.te", produces="text/html; charset=utf-8")
	public String checkNickname(Teacher t) {
		
		String responseData;		
		int result = tService.checkNickname(t);
		
		if(result > 0) {
			responseData = "NNNNN";
		}else {
			responseData = "NNNNY";
		}
		
		return responseData;
	}
	/**
	 * 강사정보수정ajax
	 * @author HeeRak
	 * @param file - introContent
	 */
	@ResponseBody
	@RequestMapping(value="ajaxUpdate.te", method=RequestMethod.POST, produces="text/html; charset=utf-8")
	public String uploadFile(MultipartFile file, Teacher t, HttpSession session) {
		
		String savePath = "resources/uploadFiles/profile_image/";
		// 새로운 첨부파일 있는 경우
		if(!file.getOriginalFilename().equals("")) {
			// 기존 파일 지우기
			if(t.getProfileImage() != null) {
				new File(session.getServletContext().getRealPath(t.getProfileImage())).delete();
			}
			
			// 새로운 파일 업로드(template 사용)
			String changeName = SaveFile.saveFile(session, file, "/"+savePath);
			t.setProfileImage(savePath + changeName);
		}
						
		int result = tService.updateTeacher(t);
		String responseData;
			
		if(result > 0) {
			responseData = "강사정보 수정완료";
		}else {
			responseData = "강사정보 수정실패";
		}
		
		return responseData;
	}
		
	/**
	 * 강사 특정 클래스 월별집계통계 요청
	 * @author HeeRak
	 * @return 
	 */
	@ResponseBody
	@RequestMapping(value="ajaxSelectClassLoan.te", produces="application/json; charset=utf-8")
	public String monthlyStatsLecture(int classNo, HttpSession session) {
			
		ArrayList<MonthlyStats> list = new ArrayList<>();
		
		if(classNo == 0) {	// 전체클래스 요청
			list = tService.monthlyStatsAll(((Member)session.getAttribute("loginUser")).getUserNo());
		}else {		// 한 클래스 요청
			list = tService.monthlyStatsLecture(classNo);			
		}
		
		return new Gson().toJson(list);
		
	}
	
}

package com.kh.surf.teacher.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.surf.teacher.model.service.TeacherService;
import com.kh.surf.teacher.model.vo.Teacher;

/**
 * @author 윤희락 7.26
 *
 */
@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService tService;
	
	// 로그인 기능 생기면 수정할것
	@RequestMapping("updateForm.te")
	public String selectTeacher(HttpSession session, Model model) {
		
		// userNo 임의 작성
		int userNo = 3;//Integer.parseInt((session.getAttribute("loginUser")).getUserNo);
		Teacher t = tService.selectTeacher(userNo);
		model.addAttribute("t", t);
		return "teacher/profileUpdateForm";
	}
	
}

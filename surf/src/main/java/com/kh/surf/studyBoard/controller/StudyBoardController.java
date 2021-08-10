package com.kh.surf.studyBoard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.surf.studyBoard.model.service.StudyBoardService;
import com.kh.surf.studyBoard.model.vo.Study;

@Controller
public class StudyBoardController {
	
	@Autowired
	private StudyBoardService sbService;
	
	@RequestMapping("enrollForm.sb")
	public String studyBoardEnrollForm() {
		
		return "studyBoard/studyBoardEnrollForm";
	}

	@RequestMapping("insert.sb")
	public String insertStudy(Study s) {
		
		System.out.println(s.getStudyTitle());
		System.out.println(s.getStudyContent());
		
		return "studyBoard/studyBoardList";
	}
}

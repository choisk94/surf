package com.kh.surf.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.surf.lecture.model.service.LectureService;

@Controller
public class LectureController {
	
	@Autowired
	private LectureService lService;
	
}

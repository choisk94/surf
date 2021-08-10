package com.kh.surf.lecture.model.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
@ToString
public class Lecture {
	private int classNo;
	private String classTitle;
	private String createDate;
	private String thumbnail;
	private String introFile;
	private String introTitle;
	private String introContent;
	private String status;
	private String period;
	private String need;
	private String note;
	private int posTerm;
	private int price;
	private int subcatNo;
	private int userNo;
	private String teacherName; // 강사명
	private int fundingCount; // 펀딩 응원수
	private double star; // 평점
	private int scrapCount; // 스크랩 수
	private int students; // 수강생 수
	private int surveyCount; // 후기 개수
	
	// Has a 관계
	private ClassFunding cf;
	
	// Has many관계
	private ArrayList<Chapter> chapList;
	private ArrayList<ClassIntro> classIntroList;
	
}

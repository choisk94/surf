package com.kh.surf.lecture.model.vo;

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
}
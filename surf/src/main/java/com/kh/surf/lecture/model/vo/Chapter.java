package com.kh.surf.lecture.model.vo;

import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter @Setter
@ToString
public class Chapter {
	private int chapOrder;
	private int classNo;
	private String chapName;
	
	// Has many 관계
	private ArrayList<ClassVideo> classVideoList;
}

package com.kh.surf.lecture.model.vo;

import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter @Setter
@ToString
public class ClassVideo {
	private int videoNo;
	private int classNo;
	private int chapOrder;
	private int videoOrder;
	private String subTitle;
	private String originName;
	private String changeName;
	
	private ArrayList<ClassVideo> cvList;
}

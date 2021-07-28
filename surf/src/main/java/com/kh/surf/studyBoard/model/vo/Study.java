package com.kh.surf.studyBoard.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter @Setter
@ToString
public class Study {
	
	private int studyNo;
	private String studyTitle;
	private String studyContent;
	private int userNo;
	private String current;	// 모집여부
	private String status;	// 활성화 여부(삭제 시 N)
	private int count;
	private Date createDate;
	private Date modifyDate;
	
}

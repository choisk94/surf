package com.kh.surf.member.model.vo;

import lombok.NoArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@NoArgsConstructor
@Getter @Setter
@ToString
public class Member {

	private int userNo;
	private String email;
	private String gender;
	private String ageRange;
	private String password;
	private String nickname;
	private String userCode;
	private String status;
	private Date memEnrolldate;
	private String enrollType;
	
}

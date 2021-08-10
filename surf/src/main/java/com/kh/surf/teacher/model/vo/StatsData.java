package com.kh.surf.teacher.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter @Setter
@ToString
public class StatsData {

	public String dataUnit;
	public int count;
	public int quality;
	public int satisfaction;
	public int difficulty;
	public int price;
	public int score;
	
}

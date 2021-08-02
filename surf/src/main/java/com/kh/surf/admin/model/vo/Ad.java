package com.kh.surf.admin.model.vo;

import java.sql.Date;

public class Ad {

	private int adNo;
	private String adTitle;
	private String adLink;
	private Date modifyDate;
	private String adStatus;
	private String originName;
	private String changeName;
	private Date uploadDate;
	
	public Ad() {}

	public Ad(int adNo, String adTitle, String adLink, Date modifyDate, String adStatus, String originName,
			String changeName, Date uploadDate) {
		super();
		this.adNo = adNo;
		this.adTitle = adTitle;
		this.adLink = adLink;
		this.modifyDate = modifyDate;
		this.adStatus = adStatus;
		this.originName = originName;
		this.changeName = changeName;
		this.uploadDate = uploadDate;
	}

	public int getAdNo() {
		return adNo;
	}

	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}

	public String getAdTitle() {
		return adTitle;
	}

	public void setAdTitle(String adTitle) {
		this.adTitle = adTitle;
	}

	public String getAdLink() {
		return adLink;
	}

	public void setAdLink(String adLink) {
		this.adLink = adLink;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getAdStatus() {
		return adStatus;
	}

	public void setAdStatus(String adStatus) {
		this.adStatus = adStatus;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	@Override
	public String toString() {
		return "Ad [adNo=" + adNo + ", adTitle=" + adTitle + ", adLink=" + adLink + ", modifyDate=" + modifyDate
				+ ", adStatus=" + adStatus + ", originName=" + originName + ", changeName=" + changeName
				+ ", uploadDate=" + uploadDate + "]";
	}
	
	
	
}
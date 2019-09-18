package com.yi.domain;

public class TitleVO {
	private int tNo;
	private String tName;
	
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public String gettName() {
		return tName;
	}
	public void settName(String tName) {
		this.tName = tName;
	}
	
	@Override
	public String toString() {
		return "TItleVO [tNo=" + tNo + ", tName=" + tName + "]";
	}
	
	
	
	
}

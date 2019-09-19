package com.yi.domain;

public class TitleVO {
	private int tNo;
	private String tName;
	
	
	public TitleVO(int tNo) {
		super();
		this.tNo = tNo;
	}
	public TitleVO(String tName) {
		super();
		this.tName = tName;
	}
	public TitleVO() {
		super();
		// TODO Auto-generated constructor stub
	}
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

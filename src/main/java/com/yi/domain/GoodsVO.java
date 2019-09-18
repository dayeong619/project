package com.yi.domain;

public class GoodsVO {
	private int gNo;
	private String gName;
	private String gLocation;
	private String gClient;
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public String getgLocation() {
		return gLocation;
	}
	public void setgLocation(String gLocation) {
		this.gLocation = gLocation;
	}
	public String getgClient() {
		return gClient;
	}
	public void setgClient(String gClient) {
		this.gClient = gClient;
	}
	@Override
	public String toString() {
		return "GoodsVO [gNo=" + gNo + ", gName=" + gName + ", gLocation=" + gLocation + ", gClient=" + gClient + "]";
	}
	
	
	
}

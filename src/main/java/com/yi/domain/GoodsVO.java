package com.yi.domain;

import java.util.Date;

public class GoodsVO {
	private int gNo;
	private Date gDay;
	private String gName;
	private String gLocation;
	private String gClient;
	private boolean gDel;
	
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public Date getgDay() {
		return gDay;
	}
	public void setgDay(Date gDay) {
		this.gDay = gDay;
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
	
	public boolean isgDel() {
		return gDel;
	}
	public void setgDel(boolean gDel) {
		this.gDel = gDel;
	}
	@Override
	public String toString() {
		return "GoodsVO [gNo=" + gNo + ", gDay=" + gDay + ", gName=" + gName + ", gLocation=" + gLocation + ", gClient="
				+ gClient + ", gDel=" + gDel + "]";
	}
	
	
	
	
	
}

package com.yi.domain;

import java.util.Date;
import java.util.List;

public class ShipmentVO {
	private int sNo;
	private int sQy;
	private Date sDay;
	private List<ProductVO> pNo;
	private boolean sBadness;
	private boolean sDel;
	
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getsQy() {
		return sQy;
	}
	public void setsQy(int sQy) {
		this.sQy = sQy;
	}
	public Date getsDay() {
		return sDay;
	}
	public void setsDay(Date sDay) {
		this.sDay = sDay;
	}
	
	public List<ProductVO> getpNo() {
		return pNo;
	}
	public void setpNo(List<ProductVO> pNo) {
		this.pNo = pNo;
	}
	public boolean issBadness() {
		return sBadness;
	}
	public void setsBadness(boolean sBadness) {
		this.sBadness = sBadness;
	}
	public boolean issDel() {
		return sDel;
	}
	public void setsDel(boolean sDel) {
		this.sDel = sDel;
	}
	
	@Override
	public String toString() {
		return "ShipmentVO [sNo=" + sNo + ", sQy=" + sQy + ", sDay=" + sDay + ", pNo=" + pNo + ", sBadness="
				+ sBadness + ", sDel=" + sDel + "]";
	}
	
	
}

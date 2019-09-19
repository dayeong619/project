package com.yi.domain;

import java.util.Date;
import java.util.List;

public class ReleaseVO {
	private int rNo;
	private int rQy;
	private Date rDay;
	private List<ProductVO> pNo;
	private boolean rBadness;
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getrQy() {
		return rQy;
	}
	public void setrQy(int rQy) {
		this.rQy = rQy;
	}
	public Date getrDay() {
		return rDay;
	}
	public void setrDay(Date rDay) {
		this.rDay = rDay;
	}
	
	public List<ProductVO> getpNo() {
		return pNo;
	}
	public void setpNo(List<ProductVO> pNo) {
		this.pNo = pNo;
	}
	public boolean isrBadness() {
		return rBadness;
	}
	public void setrBadness(boolean rBadness) {
		this.rBadness = rBadness;
	}
	@Override
	public String toString() {
		return "ReleaseVO [rNo=" + rNo + ", rQy=" + rQy + ", rDay=" + rDay + ", pNo=" + pNo + ", rBadness=" + rBadness
				+ "]";
	}
	
	
	
	
	
}

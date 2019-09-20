package com.yi.domain;

import java.util.Date;

public class WarehousingVO {
	private int wNo;
	private GoodsVO gNo;
	private Date wDay;
	private int wQy;
	private boolean wResult;
	private String wMemo;
	private String wNote;
	
	public int getwNo() {
		return wNo;
	}
	public void setwNo(int wNo) {
		this.wNo = wNo;
	}
	public GoodsVO getgNo() {
		return gNo;
	}
	public void setgNo(GoodsVO gNo) {
		this.gNo = gNo;
	}
	public Date getwDay() {
		return wDay;
	}
	public void setwDay(Date wDay) {
		this.wDay = wDay;
	}
	public int getwQy() {
		return wQy;
	}
	public void setwQy(int wQy) {
		this.wQy = wQy;
	}
	public boolean iswResult() {
		return wResult;
	}
	public void setwResult(boolean wResult) {
		this.wResult = wResult;
	}
	public String getwMemo() {
		return wMemo;
	}
	public void setwMemo(String wMemo) {
		this.wMemo = wMemo;
	}
	public String getwNote() {
		return wNote;
	}
	public void setwNote(String wNote) {
		this.wNote = wNote;
	}
	
	@Override
	public String toString() {
		return "WarehousingVO [wNo=" + wNo + ", gNo=" + gNo + ", wDay=" + wDay + ", wQy=" + wQy + ", wResult=" + wResult
				+ ", wMemo=" + wMemo + ", wNote=" + wNote + "]";
	}
	
	
}

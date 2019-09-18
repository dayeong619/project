package com.yi.domain;

import java.util.List;

public class BadnessVO {
	private int bNo;
	private List<ProductVO> pNo;
	private int bQy;
	private int bProcess;
	private int bSetup;
	private int bMaterial;
	private int bEtc;
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public List<ProductVO> getpNo() {
		return pNo;
	}
	public void setpNo(List<ProductVO> pNo) {
		this.pNo = pNo;
	}
	public int getbQy() {
		return bQy;
	}
	public void setbQy(int bQy) {
		this.bQy = bQy;
	}
	public int getbProcess() {
		return bProcess;
	}
	public void setbProcess(int bProcess) {
		this.bProcess = bProcess;
	}
	public int getbSetup() {
		return bSetup;
	}
	public void setbSetup(int bSetup) {
		this.bSetup = bSetup;
	}
	public int getbMaterial() {
		return bMaterial;
	}
	public void setbMaterial(int bMaterial) {
		this.bMaterial = bMaterial;
	}
	public int getbEtc() {
		return bEtc;
	}
	public void setbEtc(int bEtc) {
		this.bEtc = bEtc;
	}
	@Override
	public String toString() {
		return "BadnessVO [bNo=" + bNo + ", pNo=" + pNo + ", bQy=" + bQy + ", bProcess=" + bProcess + ", bSetup="
				+ bSetup + ", bMaterial=" + bMaterial + ", bEtc=" + bEtc + "]";
	}
	
}

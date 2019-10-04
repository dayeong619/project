package com.yi.domain;

import java.util.Date;
import java.util.List;

public class ProductVO {
	private int pNo;
	private WarehousingVO wNo;
	private Date pWorkday;
	private List<LineVO> lNo;
	private String pWorkname;
	private List<ManagementVO> mNo;
	private String pWorktime;
	private int pQy;
	private String pNote;
	private boolean pSection;
	private boolean pDel;
	private ShipmentVO sNo;
	private int bProcess;
	private int bSetup;
	private int bMaterial;
	private int bEtc;
	
	public boolean ispDel() {
		return pDel;
	}
	public void setpDel(boolean pDel) {
		this.pDel = pDel;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public WarehousingVO getwNo() {
		return wNo;
	}
	public void setwNo(WarehousingVO wNo) {
		this.wNo = wNo;
	}
	public Date getpWorkday() {
		return pWorkday;
	}
	public void setpWorkday(Date pWorkday) {
		this.pWorkday = pWorkday;
	}
	public List<LineVO> getlNo() {
		return lNo;
	}
	public void setlNo(List<LineVO> lNo) {
		this.lNo = lNo;
	}
	public String getpWorkname() {
		return pWorkname;
	}
	public void setpWorkname(String pWorkname) {
		this.pWorkname = pWorkname;
	}
	public List<ManagementVO> getmNo() {
		return mNo;
	}
	public void setmNo(List<ManagementVO> mNo) {
		this.mNo = mNo;
	}
	public String getpWorktime() {
		return pWorktime;
	}
	public void setpWorktime(String pWorktime) {
		this.pWorktime = pWorktime;
	}
	public int getpQy() {
		return pQy;
	}
	public void setpQy(int pQy) {
		this.pQy = pQy;
	}
	public String getpNote() {
		return pNote;
	}
	public void setpNote(String pNote) {
		this.pNote = pNote;
	}
	public boolean ispSection() {
		return pSection;
	}
	public void setpSection(boolean pSection) {
		this.pSection = pSection;
	}
	public ShipmentVO getsNo() {
		return sNo;
	}
	public void setsNo(ShipmentVO sNo) {
		this.sNo = sNo;
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
		return "ProductVO [pNo=" + pNo + ", wNo=" + wNo + ", pWorkday=" + pWorkday + ", lNo=" + lNo + ", pWorkname="
				+ pWorkname + ", mNo=" + mNo + ", pWorktime=" + pWorktime + ", pQy=" + pQy + ", pNote=" + pNote
				+ ", pSection=" + pSection + ", pDel=" + pDel + ", sNo=" + sNo + ", bProcess부터=" + bProcess+bSetup+bMaterial+bEtc+ "]";
	}
	
	
	
	
	
}

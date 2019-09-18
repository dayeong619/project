package com.yi.domain;

public class LineVO {
	private int lNo;
	private String lLine;
	
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public String getlLine() {
		return lLine;
	}
	public void setlLine(String lLine) {
		this.lLine = lLine;
	}
	
	@Override
	public String toString() {
		return "LineVO [lNo=" + lNo + ", lLine=" + lLine + "]";
	}
	
		
}

package com.yi.domain;

public class DepartmentVO {
	private int dNo;
	private String dName;
	
	public DepartmentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public DepartmentVO(int dNo) {
		super();
		this.dNo = dNo;
	}

	public DepartmentVO(String dName) {
		super();
		this.dName = dName;
	}
	
	public int getdNo() {
		return dNo;
	}


	public void setdNo(int dNo) {
		this.dNo = dNo;
	}


	public String getdName() {
		return dName;
	}


	public void setdName(String dName) {
		this.dName = dName;
	}

	@Override
	public String toString() {
		return "DepartmentVO [dNo=" + dNo + ", dName=" + dName + "]";
	}
	
	
}

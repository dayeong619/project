package com.yi.domain;

import java.util.Date;

public class ManagementVO {
	private int mNo;
	private String mId;
	private String mPw;
	private String mName;
	private int mBirth;
	private String mEmail;
	private String mTel;
	private String mAddr;
	private Date mEnterday;
	private String mPhoto;
	private Date mConfirm;
	private DepartmentVO dNo;
	private TitleVO tNo;
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getmBirth() {
		return mBirth;
	}
	public void setmBirth(int mBirth) {
		this.mBirth = mBirth;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmTel() {
		return mTel;
	}
	public void setmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmAddr() {
		return mAddr;
	}
	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}
	public Date getmEnterday() {
		return mEnterday;
	}
	public void setmEnterday(Date mEnterday) {
		this.mEnterday = mEnterday;
	}
	public String getmPhoto() {
		return mPhoto;
	}
	public void setmPhoto(String mPhoto) {
		this.mPhoto = mPhoto;
	}
	public Date getmConfirm() {
		return mConfirm;
	}
	public void setmConfirm(Date mConfirm) {
		this.mConfirm = mConfirm;
	}
	public DepartmentVO getdNo() {
		return dNo;
	}
	public void setdNo(DepartmentVO dNo) {
		this.dNo = dNo;
	}
	public TitleVO gettNo() {
		return tNo;
	}
	public void settNo(TitleVO tNo) {
		this.tNo = tNo;
	}
	@Override
	public String toString() {
		return "ManagementVO [mNo=" + mNo + ", mId=" + mId + ", mPw=" + mPw + ", mName=" + mName + ", mBirth=" + mBirth
				+ ", mEmail=" + mEmail + ", mTel=" + mTel + ", mAddr=" + mAddr + ", mEnterday=" + mEnterday
				+ ", mPhoto=" + mPhoto + ", mConfirm=" + mConfirm + ", dNo=" + dNo + ", tNo=" + tNo + "]";
	}
	
	
	
	
	
	
}

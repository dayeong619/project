package com.yi.domain;

public class LoginDto {
	private String userid;
	private String username;
	//관리자여부 만 추가 하기 isMg boolean으로 
	//등급별로 나누기 대리는 , 부장은, 사장(관리자)
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public String toString() {
		return "LoginDto [userid=" + userid + ", username=" + username + "]";
	}
	
	
}

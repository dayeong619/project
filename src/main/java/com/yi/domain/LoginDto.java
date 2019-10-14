package com.yi.domain;

public class LoginDto {
	private String userid;
	private String username;
	private String admin;
	private String director;
	private String assistant;
	
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
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getAssistant() {
		return assistant;
	}
	public void setAssistant(String assistant) {
		this.assistant = assistant;
	}
	
	@Override
	public String toString() {
		return "LoginDto [userid=" + userid + ", username=" + username + ", admin=" + admin + ", director=" + director
				+ ", assistant=" + assistant + "]";
	}
	
	
	
}

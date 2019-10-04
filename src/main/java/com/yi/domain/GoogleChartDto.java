package com.yi.domain;

public class GoogleChartDto {
	private String item;
	private int number;
	
	public GoogleChartDto() {
	}
	
	public GoogleChartDto(String item, int number) {
		super();
		this.item = item;
		this.number = number;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "GoogleChartDto [item=" + item + ", number=" + number + "]";
	}
	
}

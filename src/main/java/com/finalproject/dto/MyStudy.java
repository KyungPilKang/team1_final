package com.finalproject.dto;

public class MyStudy {
	String maker;
	int startrow;

	public MyStudy() {};	
	public MyStudy(String maker, int startrow) {
		super();
		this.maker = maker;
		this.startrow = startrow;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	
}

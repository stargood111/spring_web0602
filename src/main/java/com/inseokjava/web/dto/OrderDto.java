package com.inseokjava.web.dto;

public class OrderDto {

	private String cname;
	private int ccup;
	private int cprice;
	
	public OrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDto(String cname, int ccup, int cprice) {
		super();
		this.cname = cname;
		this.ccup = ccup;
		this.cprice = cprice;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCcup() {
		return ccup;
	}
	public void setCcup(int ccup) {
		this.ccup = ccup;
	}
	public int getCprice() {
		return cprice;
	}
	public void setCprice(int cprice) {
		this.cprice = cprice;
	}
	
}

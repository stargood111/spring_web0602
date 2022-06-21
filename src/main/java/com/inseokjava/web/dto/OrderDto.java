package com.inseokjava.web.dto;

public class OrderDto {

	private String pid;
	private String pmenu;
	private String pcup;
	private String pprice;
	private String pdate;
	private String pallprice;
	private String pnum;
	public OrderDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderDto(String pid, String pmenu, String pcup, String pprice, String pdate, String pallprice, String pnum) {
		super();
		this.pid = pid;
		this.pmenu = pmenu;
		this.pcup = pcup;
		this.pprice = pprice;
		this.pdate = pdate;
		this.pallprice = pallprice;
		this.pnum = pnum;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPmenu() {
		return pmenu;
	}
	public void setPmenu(String pmenu) {
		this.pmenu = pmenu;
	}
	public String getPcup() {
		return pcup;
	}
	public void setPcup(String pcup) {
		this.pcup = pcup;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getPallprice() {
		return pallprice;
	}
	public void setPallprice(String pallprice) {
		this.pallprice = pallprice;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

}
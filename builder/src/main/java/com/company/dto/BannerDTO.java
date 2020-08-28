package com.company.dto;

public class BannerDTO {

	private int bannerid;
	private String file;
	private String title;
	private String link;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	public int getBannerid() {
		return bannerid;
	}
	public void setBannerid(int bannerid) {
		this.bannerid = bannerid;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
}

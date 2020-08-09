package com.company.dto;

public class SiteDTO {

	int siteid;
	String userid;
	String sitename;
	String category;
	String status;
	String topcategory;
	String siteemail;
	String logo;
	
	public String getSiteemail() {
		return siteemail;
	}
	public void setSiteemail(String siteemail) {
		this.siteemail = siteemail;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getTopcategory() {
		return topcategory;
	}
	public void setTopcategory(String topcategory) {
		this.topcategory = topcategory;
	}
	public int getSiteid() {
		return siteid;
	}
	public void setSiteid(int siteid) {
		this.siteid = siteid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSitename() {
		return sitename;
	}
	public void setSitename(String sitename) {
		this.sitename = sitename;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

}

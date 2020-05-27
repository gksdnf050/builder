package com.company.dto;


public class PeopleNoteboxDTO {

	private int noteboxid;
	private int boardid;
	private String touserid;
	private String fromuserid;
	private String title;
	//private String image;
	private String content;
	
	public int getNoteboxid() {
		return noteboxid;
	}
	public void setNoteboxid(int noteboxid) {
		this.noteboxid = noteboxid;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getTouserid() {
		return touserid;
	}
	public void setTouserid(String touserid) {
		this.touserid = touserid;
	}
	public String getFromuserid() {
		return fromuserid;
	}
	public void setFromuserid(String fromuserid) {
		this.fromuserid = fromuserid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
/*	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	} */
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}

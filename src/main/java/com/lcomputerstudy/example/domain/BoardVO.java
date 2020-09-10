package com.lcomputerstudy.example.domain;

public class BoardVO {
	private int		bId;
	private String	bTitle;
	private String	bContent;
	private String	bWriter;
	private String	bDateTime;
	private	int		b_cnt_id;
	
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId=bId;
	}

	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle=bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent=bContent;
	}

	public String getbWriter() {
		return bWriter;
	}
	public void setbWriter(String bWriter) {
		this.bWriter=bWriter;
	}
	
	public String getbDateTime() {
		return bDateTime;
	}
	public void setbDateTime(String bDateTime) {
		this.bDateTime=bDateTime;
	}
	public int getb_cnt_id() {
		return b_cnt_id;
	}
	public void setb_cnt_id(int b_cnt_id) {
		this.b_cnt_id = b_cnt_id;
	}
	
}

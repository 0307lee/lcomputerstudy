package com.lcomputerstudy.example.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

public class BoardVO {
	private int		bId;
	private String	bTitle;
	private String	bContent;
	private String	bWriter;
	private String	bDateTime;
	private	int		b_cnt_id;
	private String 	uId;
	
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
	//u_name은 포린키로 연결될것인데 여기에 이렇게 그냥 다른 Board값처럼 선언하면 되나?
	//UserVO의 authorities경우에는
	//public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
	//이렇게 끌어왓던데
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
}

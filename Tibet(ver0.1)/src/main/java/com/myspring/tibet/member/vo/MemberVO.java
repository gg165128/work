package com.myspring.tibet.member.vo;

import java.util.Date;

import org.springframework.stereotype.Component;


@Component("memberVO")
public class MemberVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_birth;
	private String user_phone;
	private String user_email;
	private String user_zip;
	private String user_addr1;
	private String user_addr2;
	private int user_gender;
	private String user_membership;
	private Date user_joinDate;
	private int user_point;
	private int user_mailSend;
	private int adminck;
	private String googleid;
	private String naverid;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_zip() {
		return user_zip;
	}
	public void setUser_zip(String user_zip) {
		this.user_zip = user_zip;
	}
	public String getUser_addr1() {
		return user_addr1;
	}
	public void setUser_addr1(String user_addr1) {
		this.user_addr1 = user_addr1;
	}
	public String getUser_addr2() {
		return user_addr2;
	}
	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}
	public int getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(int user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_membership() {
		return user_membership;
	}
	public void setUser_membership(String user_membership) {
		this.user_membership = user_membership;
	}
	public Date getUser_joinDate() {
		return user_joinDate;
	}
	public void setUser_joinDate(Date user_joinDate) {
		this.user_joinDate = user_joinDate;
	}
	public int getUser_point() {
		return user_point;
	}
	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}
	public int getUser_mailSend() {
		return user_mailSend;
	}
	public void setUser_mailSend(int user_mailSend) {
		this.user_mailSend = user_mailSend;
	}
	public int getAdminck() {
		return adminck;
	}
	public void setAdminck(int adminck) {
		this.adminck = adminck;
	}
	public String getGoogleid() {
		return googleid;
	}
	public void setGoogleid(String googleid) {
		this.googleid = googleid;
	}
	public String getNaverid() {
		return naverid;
	}
	public void setNaverid(String naverid) {
		this.naverid = naverid;
	}
}

	
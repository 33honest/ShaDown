package com.shadow.entity;

public class UserEntity {
	private String nickname;
	private String username;
	private String password;
	private String uid;
	private String per_img;
	private String per_info;
	private String per_likenum;
	private String per_message_num;
	private int cou;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPer_img() {
		return per_img;
	}
	public void setPer_img(String per_img) {
		this.per_img = per_img;
	}
	public String getPer_info() {
		return per_info;
	}
	public void setPer_info(String per_info) {
		this.per_info = per_info;
	}
	public String getPer_likenum() {
		return per_likenum;
	}
	public void setPer_likenum(String per_likenum) {
		this.per_likenum = per_likenum;
	}
	public String getPer_message_num() {
		return per_message_num;
	}
	public void setPer_message_num(String per_message_num) {
		this.per_message_num = per_message_num;
	}
	
	public int getCou() {
		return cou;
	}
	public void setCou(int cou) {
		this.cou = cou;
	}
	@Override
	public String toString() {
		return "UserEntity [nickname=" + nickname + ", username=" + username
				+ ", password=" + password + "]";
	}
	
}

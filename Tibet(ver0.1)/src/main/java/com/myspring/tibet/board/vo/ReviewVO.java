package com.myspring.tibet.board.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("reviewVO")
public class ReviewVO {
	private int review_num;
	private String review_title;
	private String review_img;
	private String review_content;
	private String review_usesize;
	private int review_height;
	private int review_weight;
	private Date review_date;
	private String user_id;
	private String product_num;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_img() {
		return review_img;
	}
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_usesize() {
		return review_usesize;
	}
	public void setReview_usesize(String review_usesize) {
		this.review_usesize = review_usesize;
	}
	public int getReview_height() {
		return review_height;
	}
	public void setReview_height(int review_height) {
		this.review_height = review_height;
	}
	public int getReview_weight() {
		return review_weight;
	}
	public void setReview_weight(int review_weight) {
		this.review_weight = review_weight;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_num() {
		return product_num;
	}
	public void setProduct_num(String product_num) {
		this.product_num = product_num;
	}
}

package com.myspring.tibet.product.vo;


import org.springframework.stereotype.Component;

@Component("SubCateVO")
public class SubCateVO {
	private int sub_category_num;
	private String sub_category_name;
	private int main_category_num;
	
	public int getSub_category_num() {
		return sub_category_num;
	}
	public void setSub_category_num(int sub_category_num) {
		this.sub_category_num = sub_category_num;
	}
	
	public String getSub_category_name() {
		return sub_category_name;
	}
	public void setSub_category_name(String sub_category_name) {
		this.sub_category_name = sub_category_name;
	}
	
	public int getMain_category_num() {
		return main_category_num;
	}
	public void setMain_category_num(int main_category_num) {
		this.main_category_num = main_category_num;
	}
}

package com.myspring.tibet.product.vo;

import org.springframework.stereotype.Component;

@Component("mainCateVO")
public class MainCateVO {
	private int main_category_num;
	private String main_category_name;
	
	public int getMain_category_num() {
		return main_category_num;
	}
	public void setMain_category_num(int main_category_num) {
		this.main_category_num = main_category_num;
	}
	
	public String getMain_category_name() {
		return main_category_name;
	}
	public void setMain_category_name(String main_category_name) {
		this.main_category_name = main_category_name;
	}
	
}

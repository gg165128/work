package com.myspring.tibet.product.service;

import java.util.List;

import com.myspring.tibet.product.vo.MainCateVO;
import com.myspring.tibet.product.vo.ProductVO;


public interface ProductService {
	public ProductVO productDetail(String product_num) throws Exception ;

	public List<ProductVO> productListNew() throws Exception;
	public List<ProductVO> productListLowprice() throws Exception;
	public List<ProductVO> productListHighprice() throws Exception;

	public List<ProductVO> productListName(int main_category_num) throws Exception;

	public List<MainCateVO> mainCate() throws Exception;
	
}

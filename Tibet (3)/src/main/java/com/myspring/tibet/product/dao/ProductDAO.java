package com.myspring.tibet.product.dao;

import java.util.List;

import com.myspring.tibet.product.vo.MainCateVO;
import com.myspring.tibet.product.vo.ProductVO;


public interface ProductDAO {
	public List<ProductVO> productlistNew() throws Exception;

	public ProductVO productDetail(String product_num);

	public List<ProductVO> productlistHighprice() throws Exception;
	public List<ProductVO> productlistLowprice() throws Exception;

	public List<ProductVO> productlistName(int main_category_num) throws Exception;

	public List<MainCateVO> mainCate() throws Exception;


}

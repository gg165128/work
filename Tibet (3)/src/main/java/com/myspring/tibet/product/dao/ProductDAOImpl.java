package com.myspring.tibet.product.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myspring.tibet.product.vo.MainCateVO;
import com.myspring.tibet.product.vo.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "mappers.product";

	
	@Override
	public List<ProductVO> productlistNew() throws Exception {
		return sqlSession.selectList(namespace + ".productListNew");
	}
	
	@Override
	public List<ProductVO> productlistHighprice() throws Exception {
		return sqlSession.selectList(namespace + ".productListHighprice");
	}
	
	@Override
	public List<ProductVO> productlistLowprice() throws Exception {
		return sqlSession.selectList(namespace + ".productListLowprice");
	}
	
	@Override
	public List<ProductVO> productlistName(int main_category_num) throws Exception {
		return sqlSession.selectList(namespace + ".productListName", main_category_num);
	}
	
	@Override
	public ProductVO productDetail(String product_num) {
		return sqlSession.selectOne(namespace + ".productDetail",product_num);
	}
	
	@Override
	public List<MainCateVO> mainCate() throws Exception {
		return sqlSession.selectList(namespace + ".mainCate");
	}
}

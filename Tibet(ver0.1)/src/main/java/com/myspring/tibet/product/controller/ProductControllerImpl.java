package com.myspring.tibet.product.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.tibet.board.service.BoardService;
import com.myspring.tibet.product.service.ProductService;





@Controller("productController")
public class ProductControllerImpl implements ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private BoardService boardService;
	
	@Override
	@RequestMapping(value="/productlistName{main_category_num}.do" ,method = RequestMethod.GET)
	public ModelAndView productlistName(@PathVariable("main_category_num") int main_category_num,ModelAndView mav) throws Exception {
		mav.setViewName("/productListName");
		mav.addObject("main_cate", productService.productListName(main_category_num));
		return mav;
	}
	
	@Override
	@RequestMapping(value="/productlistLowprice.do" ,method = RequestMethod.GET)
	public ModelAndView productlistLowprice(ModelAndView mav) throws Exception {
		mav.setViewName("/productListLowprice");
		mav.addObject("list", productService.productListLowprice());
		return mav;
	}
	
	@Override
	@RequestMapping(value="/productlistHighprice.do" ,method = RequestMethod.GET)
	public ModelAndView productlistHighprice(ModelAndView mav) throws Exception {
		mav.setViewName("/productListHighprice");
		mav.addObject("list", productService.productListHighprice());
		return mav;
	}
	
	@Override
	@RequestMapping(value="/productlistNew.do" ,method = RequestMethod.GET)
	public ModelAndView productlistNew(ModelAndView mav) throws Exception {
		mav.setViewName("/productListNew");
		mav.addObject("list", productService.productListNew());
		return mav;
	}

	@Override
	@RequestMapping("/productdetail{product_num}.do")
	public ModelAndView detail(@PathVariable("product_num") String product_num, ModelAndView mav) throws Exception{
		mav.setViewName("/productDetail");
		mav.addObject("vo", productService.productDetail(product_num));
		mav.addObject("prodQnasList", boardService.listProdQnas(product_num));
		mav.addObject("prodReviewsList", boardService.listProdReviews(product_num));
		return mav;
	}

	@Override
	public ModelAndView mainCate(ModelAndView mav) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
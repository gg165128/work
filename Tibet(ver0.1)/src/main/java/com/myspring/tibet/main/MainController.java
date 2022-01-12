package com.myspring.tibet.main;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	/*
	 * @RequestMapping(value = "/main.do", method = RequestMethod.GET) public String
	 * main(Locale locale, Model model) { return "/main"; }
	 */
	@RequestMapping(value = "/membership.do", method = RequestMethod.GET)
	public ModelAndView membership(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/membership");
		return mav;
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/login");
		return mav;
	}
	
	@RequestMapping(value = "/new.do", method = RequestMethod.GET)
	public ModelAndView new1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/new");
		return mav;
	}
	
	@RequestMapping(value = "/outer.do", method = RequestMethod.GET)
	public ModelAndView outer(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/outer");
		return mav;
	}
	
	@RequestMapping(value = "/outer-1.do", method = RequestMethod.GET)
	public ModelAndView outer1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/outer-1");
		return mav;
	}
	
	@RequestMapping(value = "/outer-2.do", method = RequestMethod.GET)
	public ModelAndView outer2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/outer-2");
		return mav;
	}

	@RequestMapping(value = "/top.do", method = RequestMethod.GET)
	public ModelAndView top(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top");
		return mav;
	}
	
	@RequestMapping(value = "/top-1-1.do", method = RequestMethod.GET)
	public ModelAndView top1a1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top-1-1");
		return mav;
	}
	
	@RequestMapping(value = "/top-2.do", method = RequestMethod.GET)
	public ModelAndView top2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top-2");
		return mav;
	}
	@RequestMapping(value = "/top-3.do", method = RequestMethod.GET)
	public ModelAndView top3(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top-3");
		return mav;
	}
	@RequestMapping(value = "/top-4.do", method = RequestMethod.GET)
	public ModelAndView top4(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top-4");
		return mav;
	}
	@RequestMapping(value = "/top-5.do", method = RequestMethod.GET)
	public ModelAndView top5(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/top-5");
		return mav;
	}
	
	@RequestMapping(value = "/pants.do", method = RequestMethod.GET)
	public ModelAndView pants(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/pants");
		return mav;
	}
	
	@RequestMapping(value = "/pants-1.do", method = RequestMethod.GET)
	public ModelAndView pants1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/pants-1");
		return mav;
	}
	
	@RequestMapping(value = "/pants-2.do", method = RequestMethod.GET)
	public ModelAndView pants2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/pants-2");
		return mav;
	}
	
	@RequestMapping(value = "/bag.do", method = RequestMethod.GET)
	public ModelAndView bag(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/bag");
		return mav;
	}
	
	@RequestMapping(value = "/bag-1.do", method = RequestMethod.GET)
	public ModelAndView bag1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/bag-1");
		return mav;
	}
	
	@RequestMapping(value = "/bag-2.do", method = RequestMethod.GET)
	public ModelAndView bag2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/bag-2");
		return mav;
	}
	
	@RequestMapping(value = "/bag-3.do", method = RequestMethod.GET)
	public ModelAndView bag3(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/bag-3");
		return mav;
	}
	
	@RequestMapping(value = "/bag-4.do", method = RequestMethod.GET)
	public ModelAndView bag4(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/bag-4");
		return mav;
	}
	
	@RequestMapping(value = "/acc.do", method = RequestMethod.GET)
	public ModelAndView acc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/acc");
		return mav;
	}
	
	@RequestMapping(value = "/acc-1.do", method = RequestMethod.GET)
	public ModelAndView acc1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/acc-1");
		return mav;
	}
	
	@RequestMapping(value = "/acc-2.do", method = RequestMethod.GET)
	public ModelAndView acc2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/acc-2");
		return mav;
	}
	
	@RequestMapping(value = "/acc-3.do", method = RequestMethod.GET)
	public ModelAndView acc3(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/acc-3");
		return mav;
	}
	
	@RequestMapping(value = "/acc-4.do", method = RequestMethod.GET)
	public ModelAndView acc4(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/acc-4");
		return mav;
	}

	@RequestMapping(value = "/sale.do", method = RequestMethod.GET)
	public ModelAndView sale(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/sale");
		return mav;
	}
	
	@RequestMapping(value = "/cart.do", method = RequestMethod.GET)
	public ModelAndView cart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/cart");
		return mav;
	}
	
	@RequestMapping(value = "/order.do", method = RequestMethod.GET)
	public ModelAndView order(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/order");
		return mav;
	}
	
	@RequestMapping(value = "/orderList.do", method = RequestMethod.GET)
	public ModelAndView orderlist(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/orderList");
		return mav;
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.GET) 
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView("/search");
		return mav; 
	}
	

}

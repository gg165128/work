package com.myspring.tibet.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.tibet.board.vo.QnaVO;
import com.myspring.tibet.member.vo.MemberVO;
import com.myspring.tibet.utils.Criteria;

public interface BoardController {
	// public ModelAndView listNotices(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// public ModelAndView listQnas(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity insertQnaWritePage(@ModelAttribute("qnaVO") QnaVO _qnaVO, HttpServletRequest request, HttpServletResponse response)
			throws Exception;
	public ModelAndView prodQnaWrite(@PathVariable("product_num") String product_num, ModelAndView mav) throws Exception;
	public ModelAndView qnaWrite(ModelAndView mav) throws Exception;
	public ModelAndView openQnaList(Criteria cri, HttpServletRequest request) throws Exception;
	public ModelAndView openNoticeList(Criteria cri, HttpServletRequest request) throws Exception;
	public ModelAndView noticeDetail(@PathVariable("notice_num") Integer notice_num, ModelAndView mav) throws Exception;
	public ModelAndView qnaDetail(@PathVariable("qna_num") Integer qna_num, ModelAndView mav) throws Exception;
	public String delete(@RequestParam("qna_num") Integer qna_num) throws Exception;
	public ResponseEntity modifyQna(QnaVO _qnaVO, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView qnaModifyForm(Integer qna_num, ModelAndView mav) throws Exception;
	
}

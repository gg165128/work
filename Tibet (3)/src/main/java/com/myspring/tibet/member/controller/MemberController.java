package com.myspring.tibet.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.tibet.member.vo.MemberVO;

public interface MemberController {
	public ResponseEntity  addMember(@ModelAttribute("member") MemberVO member,
            HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView login(@RequestParam Map<String, String> loginMap,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity   overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public String deletePOST(MemberVO vo, HttpSession session) throws Exception;
	public String findID(MemberVO memberVO, Model model) throws Exception;
	public String findPW(MemberVO memberVO, Model model) throws Exception;
	public ModelAndView memModifyForm(@PathVariable("user_id") String user_id, ModelAndView mav,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity memModify(MemberVO _memberVO, HttpServletRequest request, HttpServletResponse response,HttpSession session)
			throws Exception;
}

package com.myspring.tibet.member.service;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.tibet.member.vo.MemberVO;

public interface MemberService {
	public MemberVO login(Map  loginMap) throws Exception;
	public void addMember(MemberVO memberVO) throws Exception;
	public String overlapped(String id) throws Exception;
	public void deleteMember(MemberVO vo) throws Exception;
	public MemberVO findID(MemberVO memberVO) throws Exception;
	public MemberVO findPW(MemberVO memberVO) throws Exception;
	public MemberVO modifyMemberForm(String id) throws Exception;
	public int modifyMember(MemberVO vo) throws Exception;
}

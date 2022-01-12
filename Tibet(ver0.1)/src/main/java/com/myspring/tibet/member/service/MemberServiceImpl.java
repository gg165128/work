package com.myspring.tibet.member.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.tibet.member.dao.MemberDAO;
import com.myspring.tibet.member.vo.MemberVO;

@Service("memberService")
@Transactional(propagation=Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO login(Map  loginMap) throws Exception{
		return memberDAO.login(loginMap);
	}
	
	@Override
	public void addMember(MemberVO memberVO) throws Exception{
		memberDAO.insertNewMember(memberVO);
	}
	
	@Override
	public String overlapped(String id) throws Exception{
		return memberDAO.selectOverlappedID(id);
	}
	
	@Override
	public void deleteMember(MemberVO vo) throws Exception{
		memberDAO.deleteMember(vo);
	}
	
	@Override
	public MemberVO findID(MemberVO memberVO) throws Exception {
		return memberDAO.findID(memberVO);
	}

	@Override
	public MemberVO findPW(MemberVO memberVO) throws Exception {
		return memberDAO.findPW(memberVO);
	}
	
	
	@Override 
	public MemberVO modifyMemberForm(String user_id) throws Exception {
		return memberDAO.modifyMemberForm(user_id); 
	}
	
	@Override
	public int modifyMember(MemberVO vo) throws Exception {
		return memberDAO.modifyMember(vo);
		
	}
	
	@Override 
	public MemberVO getBySns(MemberVO snsUser) { 
		return memberDAO.getBySns(snsUser); }
	 

}

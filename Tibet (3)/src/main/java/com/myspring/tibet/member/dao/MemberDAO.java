package com.myspring.tibet.member.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.tibet.member.vo.MemberVO;

public interface MemberDAO {
	public MemberVO login(Map loginMap) throws DataAccessException;
	public void insertNewMember(MemberVO memberVO) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
	public void deleteMember(MemberVO vo) throws Exception;
	public MemberVO findID(MemberVO memberVO) throws DataAccessException;
	public MemberVO findPW(MemberVO memberVO) throws DataAccessException;
	public MemberVO modifyMemberForm(String user_id);
	public int modifyMember(MemberVO vo) throws Exception;
}

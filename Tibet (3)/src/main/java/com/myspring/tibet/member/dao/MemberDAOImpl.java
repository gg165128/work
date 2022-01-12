package com.myspring.tibet.member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.tibet.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO login(Map loginMap) throws DataAccessException {
		MemberVO member = (MemberVO) sqlSession.selectOne("mapper.member.login", loginMap);
		return member;
	}

	@Override
	public void insertNewMember(MemberVO memberVO) throws DataAccessException {
		sqlSession.insert("mapper.member.insertNewMember", memberVO);
	}

	@Override
	public String selectOverlappedID(String user_id) throws DataAccessException {
		String result = sqlSession.selectOne("mapper.member.selectOverlappedID", user_id);
		return result;
	}

	// 회원탈퇴
	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		sqlSession.delete("mapper.member.deleteMember", vo);
	}
	
	@Override
	public MemberVO findID(MemberVO memberVO) throws DataAccessException {
		MemberVO member = sqlSession.selectOne("mapper.member.findID", memberVO);
		return member;
	}

	@Override
	public MemberVO findPW(MemberVO memberVO) throws DataAccessException {
		MemberVO member = sqlSession.selectOne("mapper.member.findPW", memberVO);
		return member;
	}

	@Override
	public MemberVO modifyMemberForm(String user_id) {
		return sqlSession.selectOne("mapper.member.modifyMemberForm", user_id);
	}
	
	@Override
	public int modifyMember(MemberVO vo) throws Exception {
		return sqlSession.update("mapper.member.modifyMember", vo);
	}

}

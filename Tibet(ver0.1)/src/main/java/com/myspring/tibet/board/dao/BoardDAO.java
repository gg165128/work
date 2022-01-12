package com.myspring.tibet.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.tibet.board.vo.NoticeVO;
import com.myspring.tibet.board.vo.QnaVO;
import com.myspring.tibet.board.vo.ReviewVO;
import com.myspring.tibet.utils.Criteria;


public interface BoardDAO {
	public void insertQnaWritePage(QnaVO qnaVO) throws DataAccessException;
	public List<Map<String, Object>> selectQnaList(Criteria cri);
	public int countQnaList();
	public void insertNoticeWritePage(NoticeVO noticeVO) throws DataAccessException;
	public List<Map<String, Object>> selectNoticeList(Criteria cri);
	public int countNoticeList();
	public NoticeVO noticeDetail(Integer notice_num);
	public QnaVO qnaDetail(Integer qna_num);
	public Integer modifyQna(Integer qna_num);
	public boolean deleteQna(Integer qna_num);
	public List<QnaVO> selectProdQnasList(String product_num) throws DataAccessException;
	public List<ReviewVO> selectProdReviewsList(String product_num) throws DataAccessException;
}

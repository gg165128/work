package com.myspring.tibet.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.tibet.board.dao.BoardDAO;
import com.myspring.tibet.board.vo.NoticeVO;
import com.myspring.tibet.board.vo.QnaVO;
import com.myspring.tibet.board.vo.ReviewVO;
import com.myspring.tibet.utils.Criteria;


@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;
	

	
	@Override
	public void insertQnaWritePage(QnaVO qnaVO) throws Exception{
		boardDAO.insertQnaWritePage(qnaVO);
	}
	
	@Override
	public List<Map<String, Object>> selectQnaList(Criteria cri) {
	    return boardDAO.selectQnaList(cri);
	}
	
	@Override
	public int countQnaListTotal() {
	    return boardDAO.countQnaList();
	}

	@Override
	public List<Map<String, Object>> selectNoticeList(Criteria cri) {
	    return boardDAO.selectNoticeList(cri);
	}
	
	@Override
	public int countNoticeListTotal() {
	    return boardDAO.countNoticeList();
	}
	
	@Override
	public NoticeVO noticeDetail(Integer notice_num) throws Exception {
		return boardDAO.noticeDetail(notice_num);
	}

	@Override
	public QnaVO qnaDetail(Integer qna_num) throws Exception {
		return boardDAO.qnaDetail(qna_num);
	}
	
	@Override
	public Integer qnaModify(Integer qna_num) throws Exception {
		return boardDAO.modifyQna(qna_num);
	}
	
	@Override
	public boolean deleteQna(Integer qna_num) throws Exception {
		return boardDAO.deleteQna(qna_num);
	}
	
	@Override
	public List<QnaVO> listProdQnas(String product_num) throws Exception{
		List<QnaVO> prodQnasList = boardDAO.selectProdQnasList(product_num);
		return prodQnasList;
	}
	
	@Override
	public List<ReviewVO> listProdReviews(String product_num) throws Exception {
		List<ReviewVO> prodReviewsList = boardDAO.selectProdReviewsList(product_num);
		return prodReviewsList;
	}
}

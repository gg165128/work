package com.myspring.tibet.board.service;

import java.util.List;
import java.util.Map;

import com.myspring.tibet.board.vo.NoticeVO;
import com.myspring.tibet.board.vo.QnaVO;
import com.myspring.tibet.board.vo.ReviewVO;
import com.myspring.tibet.utils.Criteria;


public interface BoardService {
	public void insertQnaWritePage(QnaVO qnaVO) throws Exception;
	public List<Map<String, Object>> selectQnaList(Criteria cri);
	public int countQnaListTotal();
	public List<Map<String, Object>> selectNoticeList(Criteria cri);
	public int countNoticeListTotal();
	public NoticeVO noticeDetail(Integer notice_num) throws Exception;
	public QnaVO qnaDetail(Integer qna_num) throws Exception;
	public Integer qnaModify(Integer qna_num) throws Exception;
	public boolean deleteQna(Integer qna_num) throws Exception;
	public List<QnaVO> listProdQnas(String product_num) throws Exception;
	public List<ReviewVO> listProdReviews(String product_num) throws Exception;
}

package com.myspring.tibet.board.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.tibet.board.vo.NoticeVO;
import com.myspring.tibet.board.vo.QnaVO;
import com.myspring.tibet.board.vo.ReviewVO;
import com.myspring.tibet.product.vo.ProductVO;
import com.myspring.tibet.utils.Criteria;


@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
	@Inject
    private SqlSession sqlSession;
	protected Log log = LogFactory.getLog(BoardDAOImpl.class);

	protected void printQueryId(String queryId) {
		if (log.isDebugEnabled()) {
			log.debug("\t QueryId  \t:  " + queryId);
		}
	}

	@SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }


	@Override
	public void insertQnaWritePage(QnaVO qnaVO) throws DataAccessException{
		sqlSession.insert("mapper.board.insertQnaWritePage", qnaVO);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> selectQnaList(Criteria cri) {
		return (List<Map<String,Object>>)selectList("mapper.board.selectAllQnasList", cri);
	}
	
	@Override
	public int countQnaList(){
	    return (Integer) sqlSession.selectOne("mapper.board.countQnaList");
	}
	@Override
	public void insertNoticeWritePage(NoticeVO noticeVO) throws DataAccessException{
		sqlSession.insert("mapper.board.insertNoticeWritePage", noticeVO);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> selectNoticeList(Criteria cri) {
		return (List<Map<String,Object>>)selectList("mapper.board.selectAllNoticesList", cri);
	}
	
	@Override
	public int countNoticeList(){
	    return (Integer) sqlSession.selectOne("mapper.board.countNoticeList");
	}
	
	@Override
	public NoticeVO noticeDetail(Integer notice_num) {
		return sqlSession.selectOne("mapper.board.noticeDetail",notice_num);
	}
	
	@Override
	public QnaVO qnaDetail(Integer qna_num) {
		return sqlSession.selectOne("mapper.board.qnaDetail",qna_num);
	}
	
	@Override
	public Integer modifyQna(Integer qna_num) {
		return sqlSession.update("mapper.board.qnaModify", qna_num);
	}
	
	@Override
	public boolean deleteQna(Integer qna_num) {
		sqlSession.delete("mapper.board.deleteQna",qna_num);
		return true;
	}
	
	@Override
	public List<QnaVO> selectProdQnasList(String product_num) throws DataAccessException {
		List<QnaVO> prodQnasList = sqlSession.selectList("mapper.board.selectProdQnasList", product_num);
		return prodQnasList;
	}
	
	@Override
	public List<ReviewVO> selectProdReviewsList(String product_num) throws DataAccessException {
		List<ReviewVO> prodReviewsList = sqlSession.selectList("mapper.board.selectProdReviewsList", product_num);
		return prodReviewsList;
	}
	
	
}

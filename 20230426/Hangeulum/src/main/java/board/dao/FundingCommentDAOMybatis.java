package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.FundingCommentDTO;

@Repository
@Transactional
public class FundingCommentDAOMybatis implements FundingCommentDAO {
	@Autowired
	public SqlSession sqlSession;
    
	@Override
	public List<FundingCommentDTO> getCommentListByBoardSeq(Long boardSeq) {
	    return sqlSession.selectList("fundingSQL.getCommentListByBoardSeq", boardSeq);
	}
    
}
package board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import board.bean.FundingDTO;

@Repository
@Transactional
public class FundingDAOMybatis implements FundingDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write(FundingDTO fundingDTO) {
		sqlSession.insert("fundingSQL.fundingWrite", fundingDTO);
	}
	
    @Override
    public FundingDTO getBoard(int boardFSeq) {
        return sqlSession.selectOne("fundingSQL.fundingGetBoard", boardFSeq);
    }

    @Override
    public List<FundingDTO> getBoardList() {
        return sqlSession.selectList("fundingSQL.fundingGetBoardList");
    }

}

package board.dao;

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

}

package boardF.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import boardF.bean.BoardFDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class BoardFDAOMybatis implements BoardFDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void boardFWrite(BoardFDTO boardFDTO) {
		sqlSession.insert("boardSQL.boardFWrite", boardFDTO);
		System.out.println("펀딩 글 작성완료.");
	}

	@Override
	public void write(BoardFDTO boardFDTO) {
		sqlSession.insert("boardSQL.boardFWite",boardFDTO);
		
	}
	

}

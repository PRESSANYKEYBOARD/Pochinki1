package board.dao;

import java.util.List;

import board.bean.FundingCommentDTO;

public interface FundingCommentDAO {

	public List<FundingCommentDTO> getCommentListByBoardSeq(Long boardSeq);

}

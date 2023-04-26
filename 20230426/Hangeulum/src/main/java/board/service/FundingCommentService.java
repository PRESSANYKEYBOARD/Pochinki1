package board.service;

import java.util.List;

import board.bean.FundingCommentDTO;

public interface FundingCommentService {
	
	public List<FundingCommentDTO> getCommentListByBoardSeq(Long boardSeq);
	
}

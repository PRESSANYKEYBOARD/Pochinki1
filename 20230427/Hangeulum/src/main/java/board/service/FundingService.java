package board.service;

import java.util.List;

import board.bean.FundingDTO;

public interface FundingService {

	public void write(FundingDTO fundingDTO);
	
	public FundingDTO getBoard(int boardFSeq);

	public List<FundingDTO> getBoardList();
	
}

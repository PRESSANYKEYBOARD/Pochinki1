package board.service;

import java.util.List;

import board.bean.FundingDTO;

public interface FundingService {

	public void write(FundingDTO fundingDTO);
	
	public FundingDTO getBoard(int boardFSeq);

	public List<FundingDTO> getBoardList();

	public FundingDTO getThumbnail(int boardFSeq);

	public void update(FundingDTO fundingDTO);

	public void delete(int boardFSeq);

	public List<FundingDTO> getBoardListByTotalRewardAmount();
	
}

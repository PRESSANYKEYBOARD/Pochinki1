package board.dao;

import java.util.List;

import board.bean.FundingDTO;

public interface FundingDAO {

	public void write(FundingDTO fundingDTO, List<String> fileNameList);

}

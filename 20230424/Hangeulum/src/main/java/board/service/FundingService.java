package board.service;

import java.util.List;
import board.bean.FundingDTO;

public interface FundingService {

	public void write_ImageUpload(FundingDTO fundingDTO, List<String> fileNameList);
	
}

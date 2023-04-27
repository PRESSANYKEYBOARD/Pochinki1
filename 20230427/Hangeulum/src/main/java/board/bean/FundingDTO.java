package board.bean;

import java.sql.Blob;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FundingDTO {
	private int boardFSeq; //시퀀스 설정
	private String userId; //not null
	private String fileName; //not null
	
	private Date boardFExpireDate; //not null
	private String boardFIsExpired;
	private String boardFSubject; //not null
	private Double boardFGoalPercet;
	private int boardFGoalAmount;
	private int boardFRealAmount;
	private String boardFContent; //not null
	
	private MultipartFile boardFThumbnail;
	private List<String> boardFRewardSelect;
	private List<Integer> boardFRewardPrice;
	
	private Date boardFSendDate; //not null
	private int boardFTotRewardCnt;
	private int boardFSoldRewardCount;
	
	public void setBoardFThumbnail(MultipartFile boardFThumbnail) {
	    this.boardFThumbnail = boardFThumbnail;
	}
}

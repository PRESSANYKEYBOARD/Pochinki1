package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.bean.FundingCommentDTO;
import board.dao.FundingCommentDAO;

@Service
public class FundingCommentServiceImpl implements FundingCommentService {
	@Autowired
	private FundingCommentDAO fundingCommentDAO;

    @Override
    public List<FundingCommentDTO> getCommentListByBoardSeq(Long boardSeq) {
        return fundingCommentDAO.getCommentListByBoardSeq(boardSeq);
    }

}

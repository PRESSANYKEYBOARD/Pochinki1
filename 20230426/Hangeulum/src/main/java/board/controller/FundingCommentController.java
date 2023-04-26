package board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import board.bean.FundingCommentDTO;
import board.service.FundingCommentService;

@Controller
@RequestMapping("funding_comment")
public class FundingCommentController {
	@Autowired
	private FundingCommentService fundingCommentService;
	
    @GetMapping(value = "fun_getCommentList")
    public String getCommentList(Model model, @RequestParam Long boardSeq) {
        List<FundingCommentDTO> commentList = fundingCommentService.getCommentListByBoardSeq(boardSeq);
        model.addAttribute("commentList", commentList);
        return "funding_comment/commentList";
    }
    
}
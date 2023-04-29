package board.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import board.bean.FundingDTO;
import board.service.FundingService;

@Controller
@RequestMapping("funding")
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@Resource(name="uploadPath")
	private String uploadPath;

	@RequestMapping(value = "fun_main", method = RequestMethod.GET)
	public String fun_main() {
		return "funding/fun_main";
	}

	@RequestMapping(value = "fun_after", method = RequestMethod.GET)
	public String fun_after() {
		return "funding/fun_after";
	}
	
	//게시글 보기
	//@PathVariable 어노테이션을 이용하여 URL 경로에 해당 번호를 포함하여 전달
	//예를 들어, URL 경로가 "/funding/{boardFSeq}"일 때, {boardFSeq} 자리에 해당 글 번호를 넣어주면 된다. 
	//이를 받아 컨트롤러에서는 @PathVariable을 사용하여 해당 변수에 값을 할당할 수 있다.
	@RequestMapping(value = "fun_view/{boardFSeq}", method = RequestMethod.GET)
	public ModelAndView fun_view(@PathVariable("boardFSeq") int boardFSeq) {
	    FundingDTO fundingDTO = fundingService.getBoard(boardFSeq);
	    return new ModelAndView("funding/fun_view", "fundingDTO", fundingDTO);
	}

	@RequestMapping(value = "fun_writeform", method = RequestMethod.GET)
	public String fun_write_Form() {
		return "funding/fun_writeform";
	}
	
	@PostMapping(value = "fun_write")
	@ResponseBody
	public void fun_write(@ModelAttribute FundingDTO fundingDTO,
						   @RequestParam MultipartFile boardFile, MultipartFile companyFile,
	                       HttpSession session) throws Exception {
	   
		String companyName= companyFile.getOriginalFilename(); //판매하는 회사 이미지	
	    String fileName = boardFile.getOriginalFilename(); //썸네일 이미지
	    String companyPath = session.getServletContext().getRealPath("/WEB-INF/storage/");
	    String thumbnailPath = session.getServletContext().getRealPath("/WEB-INF/storage/");

	    fundingDTO.setFileName(companyName);
	    fundingDTO.setBoardFThumbnail(fileName);
	    
	    File file  = new File(thumbnailPath, fileName);
	    File file2 = new File(companyPath, companyName);
	    
	    companyFile.transferTo(file2);
	    boardFile.transferTo(file);
	    
	    System.out.println(fundingDTO.getFileName());
	    System.out.println(fundingDTO.getBoardFThumbnail());
	    System.out.println(fundingDTO.getBoardFRewardSelect());
	    System.out.println(fundingDTO.getBoardFRewardPrice());
	    
	    fundingService.write(fundingDTO);
	    
	}
	
	@GetMapping(value = "fun_getBoard")
	@ResponseBody
	public FundingDTO getBoard(@RequestParam int boardFSeq) {
		return fundingService.getBoard(boardFSeq);
	}
	
	@GetMapping(value = "fun_getBoardList")
	@ResponseBody
	public List<FundingDTO> getBoardList() {
	    return fundingService.getBoardList();
	}
	
	@RequestMapping(value = "fun_list", method = RequestMethod.GET)
	public ModelAndView list() {
	    ModelAndView mav = new ModelAndView("funding/fun_main");
	    List<FundingDTO> list = fundingService.getBoardList();
	    mav.addObject("list", list);
	    return mav;
	}
	
	@GetMapping(value = "fun_getThumbnail")
	@ResponseBody
	public FundingDTO getThumbnail(@RequestParam int boardFSeq) {
		return fundingService.getThumbnail(boardFSeq);
	}
}

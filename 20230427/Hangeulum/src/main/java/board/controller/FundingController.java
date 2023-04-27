package board.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value = "fun_view", method = RequestMethod.GET)
	public String fun_view() {
		return "funding/fun_view";
	}

	@RequestMapping(value = "fun_writeform", method = RequestMethod.GET)
	public String fun_write_Form() {
		return "funding/fun_writeform";
	}
	
	@PostMapping(value = "fun_write")
	@ResponseBody
	public void fun_write(@ModelAttribute FundingDTO fundingDTO,
						   @RequestParam Map<String, String> map,
	                       @RequestParam(value = "boardFThumbnail", required = false) MultipartFile boardFThumbnail,
	                       HttpSession session) throws IOException {
	    
	    String uploadPath = session.getServletContext().getRealPath("/");
	    String filename = boardFThumbnail.getOriginalFilename();
	    String thumbnailPath = uploadPath + "/WEB-INF/image/upload_thumimage/" + filename;
	    Path thumbnailFilePath = Paths.get(thumbnailPath);
	    Files.createDirectories(thumbnailFilePath.getParent()); // 디렉토리 생성
	    Files.copy(boardFThumbnail.getInputStream(), thumbnailFilePath, StandardCopyOption.REPLACE_EXISTING);
	    
	    List<String> boardFRewardSelect = Arrays.asList(map.get("boardFRewardSelect").split(";"));
	    List<Integer> boardFRewardPrice = Arrays.stream(map.get("boardFRewardPrice").split(";"))
	                                            .map(Integer::valueOf)
	                                            .collect(Collectors.toList());
	    
	    fundingDTO.setBoardFRewardSelect(boardFRewardSelect);
	    fundingDTO.setBoardFRewardPrice(boardFRewardPrice);
	    fundingDTO.setBoardFThumbnail(boardFThumbnail);
	    
	    System.out.println(boardFRewardSelect);
	    System.out.println(boardFRewardPrice);
	    
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
	public ModelAndView fun_list(HttpServletRequest request) {
	    List<FundingDTO> fundingList = fundingService.getBoardList();
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("fundingList", fundingList);
	    mav.setViewName("funding/fun_list");
	    return mav;
	}
	
}

package board.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
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
						   @RequestParam MultipartFile boardFile,
	                       HttpSession session) throws Exception {
	    
	    String imguploadPath = session.getServletContext().getRealPath("/");
	    String fileName = boardFile.getOriginalFilename();
	  //  String thumbnailPath = imguploadPath + "\\WEB-INF\\image\\upload_thumimage\\" + fileName;
	    String thumbnailPath = session.getServletContext().getRealPath("/WEB-INF/storage/");
//	    Path thumbnailFilePath = Paths.get(thumbnailPath);
//	    Files.createDirectories(thumbnailFilePath.getParent()); // 디렉토리 생성
//	    Files.copy(boardFile.getInputStream(), thumbnailFilePath, StandardCopyOption.REPLACE_EXISTING);
//	    
//    String thumbnailRealPath = thumbnailFilePath.toString(); // 수정된 부분
	    
	    System.out.println(thumbnailPath);
	    fundingDTO.setBoardFThumbnail(fileName);
	    
	    File file  = new File(thumbnailPath,fileName);
	    boardFile.transferTo(file);
	    
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
	
	@GetMapping(value = "fun_getThumbnail")
	@ResponseBody
	public FundingDTO getThumbnail(@RequestParam int boardFSeq) {
		return fundingService.getThumbnail(boardFSeq);
	}

	@RequestMapping(value = "fun_list", method = RequestMethod.GET)
	public ModelAndView fun_list(HttpServletRequest request) {
	    List<FundingDTO> fundingList = fundingService.getBoardList();
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("fundingList", fundingList);
	    mav.setViewName("funding/fun_list");
	    return mav;
	}

	/*
	 * @GetMapping(value = "fun_getThumbnail") public ResponseEntity<byte[]>
	 * getThumImage(String fName, HttpSession session){ String imguploadPath =
	 * session.getServletContext().getRealPath("/"); File file = new
	 * File(imguploadPath + "/WEB-INF/image/upload_thumimage/" + fName);
	 * 
	 * ResponseEntity<byte[]> result = null;
	 * 
	 * try { org.springframework.http.HttpHeaders headers = new
	 * org.springframework.http.HttpHeaders(); headers.add("Content-Type",
	 * Files.probeContentType(file.toPath())); result = new
	 * ResponseEntity<>(FileCopyUtils.copyToByteArray(file),headers,HttpStatus.OK );
	 * }catch (IOException e) { e.printStackTrace(); }
	 * 
	 * return result; }
	 */
	
}

package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import board.bean.FundingDTO;
import board.service.FundingService;

@Controller
@RequestMapping("funding")
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@RequestMapping(value="fun_main", method = RequestMethod.GET)
	public String fun_main() {
		return "funding/fun_main";
	}
	
	@RequestMapping(value="fun_after", method = RequestMethod.GET)
	public String fun_after() {
		return "funding/fun_after";
	}
	
	@RequestMapping(value="fun_writeform", method = RequestMethod.GET)
	public String fun_write_Form() {
		return "funding/fun_writeform";
	}
	
	@PostMapping(value="fun_write", consumes = "multipart/form-data", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public void fun_write(@ModelAttribute FundingDTO fundingDTO, 
						  @RequestParam("img[]") List<MultipartFile> list,
						  HttpSession session) {
		
		String filePath = session.getServletContext().getRealPath("/WEB-INF/storage");
		System.out.println("실제 폴더 = " + filePath);
		
		String fileName;
		File file;
		
		List<String> fileNameList = new ArrayList<String>();
	    
		for(MultipartFile img : list) {
			fileName = img.getOriginalFilename();
			file = new File(filePath, fileName);
			
			try {
				img.transferTo(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			fileNameList.add(fileName);
			
		}//for
		
	    fundingService.write_ImageUpload(fundingDTO, fileNameList);
	    
	}
	
	

}

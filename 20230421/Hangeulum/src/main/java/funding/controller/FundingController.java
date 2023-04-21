package funding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import boardF.bean.BoardFDTO;
import boardF.dao.service.BoardFService;
import user.bean.UserDTO;

@Controller
@RequestMapping("funding")
public class FundingController {
	
	BoardFService boardFService;
	
	@RequestMapping(value="fun_main", method = RequestMethod.GET)
	public String fun_main() {
		return "funding/fun_main";
	}
	
	@RequestMapping(value="fun_after", method = RequestMethod.GET)
	public String fun_after() {
		return "funding/fun_after";
	}
	
	
	
	@RequestMapping(value="fun_write_Form", method = RequestMethod.GET)
		public String fun_write_Form() {
		
			return "funding/fun_write";
	}
	
	@RequestMapping(value="fun_write")
	@ResponseBody
	public void fun_write(@ModelAttribute BoardFDTO boardFDTO ) {
		
		
		boardFService.write(boardFDTO);
	}
	
	
	

}

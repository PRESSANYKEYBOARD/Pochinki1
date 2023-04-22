package board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("funding")
public class FundingController {
	
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

}

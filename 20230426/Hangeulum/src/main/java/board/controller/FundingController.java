package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import board.bean.FundingDTO;
import board.service.FundingService;

@Controller
@RequestMapping("funding")
public class FundingController {
	@Autowired
	private FundingService fundingService;

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
	public void fun_write(@ModelAttribute FundingDTO fundingDTO) {
		fundingService.write(fundingDTO);
	}
	
}

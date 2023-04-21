package boardFmain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/")
public class Maincontroller {
	
	
	@GetMapping
	public String index() {
		return "funding/fun_main";
	}
}

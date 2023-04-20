package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/" , method =RequestMethod.GET)
	public String Index() { //사용자 콜백 메소드
		return "views/home"; // /WEB-INF/sum/input.jsp 
	}
	
	@RequestMapping(value="/fun_main", method = RequestMethod.GET)
	public String fun_main() {
		return "views/fun_main";
	}
	
	@RequestMapping(value="/fun_after", method = RequestMethod.GET)
	public String fun_after() {
		return "views/fun_after";
	}
	
}

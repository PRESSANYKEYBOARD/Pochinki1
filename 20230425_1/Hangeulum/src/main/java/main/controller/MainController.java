package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	@GetMapping
	public String Index() { //사용자 콜백 메소드
		return "home"; // /WEB-INF/sum/input.jsp 
	}
	
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String Test() { //사용자 콜백 메소드
		return "test"; // /WEB-INF/sum/input.jsp 
	}
	
}
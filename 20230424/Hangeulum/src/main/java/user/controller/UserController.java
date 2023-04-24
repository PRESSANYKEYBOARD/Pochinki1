package user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import user.bean.UserDTO;
import user.dao.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService userService = null;
	
	@GetMapping("joinForm")
	public String joinForm() {
		return "views/test";
	}

	@PostMapping("join")
	@ResponseBody
	public void join(@ModelAttribute UserDTO userDTO) {
		System.out.println(userDTO.getUseremail());
		
		userService.join(userDTO);
		
	}

}

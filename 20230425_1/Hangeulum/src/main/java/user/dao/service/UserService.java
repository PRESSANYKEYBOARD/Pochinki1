package user.dao.service;

import org.springframework.web.bind.annotation.ModelAttribute;

import user.bean.UserDTO;

public interface UserService {

	public void join(UserDTO userDTO);

	

}

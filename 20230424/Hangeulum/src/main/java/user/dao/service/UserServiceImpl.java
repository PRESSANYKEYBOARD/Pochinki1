package user.dao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO = null;


	
	@Override
	public void join(UserDTO userDTO) {
		userDAO.join(userDTO);
		
	}

}

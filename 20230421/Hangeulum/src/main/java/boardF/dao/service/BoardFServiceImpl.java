package boardF.dao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boardF.bean.BoardFDTO;
import boardF.dao.BoardFDAO;
import user.bean.UserDTO;

@Service
public class BoardFServiceImpl implements BoardFService {
	@Autowired
	private BoardFDAO boardFDAO = null;
	
	@Override
	public void boardFWrite(BoardFDTO boardFDTO) {
		boardFDAO.boardFWrite(boardFDTO);
		
	}

	@Override
	public void write(BoardFDTO boardFDTO) {
		boardFDAO.write(boardFDTO);
		
	}

}

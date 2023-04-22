package user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;

@Repository
@Transactional
public class UserDAOMybatis implements UserDAO {
	@Autowired
	private SqlSession sqlsession;

	
	@Override
	public void join(UserDTO userDTO) {
		
		
		
		sqlsession.insert("userSQL.join",userDTO);
		System.out.println("회원가입성공");

	}

}

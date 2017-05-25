package moigo.store.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import moigo.domain.User;
import moigo.store.UserStore;
import moigo.store.mybatis.mapper.UserMapper;

@Repository
public class UserStoreLogic implements UserStore {

	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean deleteUser(String userEmail) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<User> selectUserByEmail(String userEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> selectUserByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User selectUser(String userEmail) {
		// TODO Auto-generated method stub
		return null;
	}
	
//	@Autowired
//	private UserMapper mapper;
//
//	@Override
//	public boolean insertUser(User user) {
//		boolean insert = mapper.insertUser(user);
//		return insert;
//	}
//
//	@Override
//	public int updateUser(User user) {
//		int update = mapper.updateUser(user);
//		return update;
//	}
//
//	@Override
//	public boolean deleteUser(String userEmail) {
//		boolean delete = mapper.deleteUser(userEmail);
//		return delete;
//	}
//
//	@Override
//	public List<User> selectUserByEmail(String userEmail) {
//		List<User> users = mapper.selectUserByEmail(userEmail);
//		return users;
//	}
//
//	@Override
//	public List<User> selectUserByName(String name) {
//		List<User> users = mapper.selectUserByName(name);
//		return users;
//	}
//
//	@Override
//	public User selectUser(String userEmail) {
//		User user = mapper.selectUser(userEmail);
//		return user;
//	}	

}

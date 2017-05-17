package onoffmix.store.logic;

import java.util.List;

import onoffmix.domain.User;
import onoffmix.store.UserStore;

public class UserStoreLogic implements UserStore {

	@Override
	public void insertUser(User user) {
		
	}

	@Override
	public int updateUser(User user) {
		return 0;
	}

	@Override
	public boolean deleteUser(String userEmail) {
		return false;
	}

	@Override
	public List<User> selectUserByEmail(String userEmail) {
		return null;
	}

	@Override
	public List<User> selectUserByName(String name) {
		return null;
	}

	@Override
	public User selectUser(String userEmail) {
		return null;
	}
	
	

}

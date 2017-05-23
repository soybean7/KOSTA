package moigo.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import moigo.domain.User;
import moigo.store.UserStore;

@Repository
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

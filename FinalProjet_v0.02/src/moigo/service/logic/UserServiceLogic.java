package moigo.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moigo.domain.User;
import moigo.service.UserService;
import moigo.store.UserStore;

@Service
public class UserServiceLogic implements UserService{

	@Autowired
	private UserStore store;
	
	@Override
	public void registUser(User user) {
		
	}

	@Override
	public int modifyUser(User user) {
		return 0;
	}

	@Override
	public boolean removeUser(String userEmail) {
		return false;
	}

	@Override
	public User searchUser(String userEmail) {
		return null;
	}

	@Override
	public List<User> searchUserByName(String name) {
		return null;
	}

	@Override
	public List<User> searchUserByEmail(String userEmail) {
		return null;
	}
	
	

}

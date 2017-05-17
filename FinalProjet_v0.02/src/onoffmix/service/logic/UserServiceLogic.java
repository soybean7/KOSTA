package onoffmix.service.logic;

import java.util.List;

import onoffmix.domain.User;
import onoffmix.service.UserService;

public class UserServiceLogic implements UserService{

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

package moigo.service;

import java.util.List;

import moigo.domain.User;

//written SHKim at 20170517
public interface UserService {
	
	boolean registUser(User user);
	int modifyUser(User user);
	boolean removeUser(String userEmail);
	User searchUser(String userEmail);
	List<User> searchUserByName(String name);
	List<User> searchUserByEmail(String userEmail);
	User login(User user);
}

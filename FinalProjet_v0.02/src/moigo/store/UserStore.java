package moigo.store;

import java.util.List;

import moigo.domain.User;

public interface UserStore {
	
	public boolean insertUser(User user);
	public int updateUser(User user);
	public boolean deleteUser(String userEmail);
	public List<User> selectUserByEmail(String userEmail);
	public List<User> selectUserByName(String name);
	public User selectUser(String userEmail);

}

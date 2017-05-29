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
	public boolean registUser(User user) {
		
		if(!validate(user)){
			return false;
		}else if(store.selectUser(user.getEmail()) != null){
			return false;
		}
		return store.insertUser(user);
	}

	@Override
	public int modifyUser(User user) {
		return store.updateUser(user);
	}

	@Override
	public boolean removeUser(String userEmail) {
		return store.deleteUser(userEmail);
	}

	@Override
	public User searchUser(String userEmail) {
		return store.selectUser(userEmail);
	}

	@Override
	public List<User> searchUserByName(String name) {
		return store.selectUserByName(name);
	}

	@Override
	public List<User> searchUserByEmail(String userEmail) {
		return store.selectUserByEmail(userEmail);
	}

	@Override
	public User login(User user) {
		
		User readedUser = null;
		if (validate(user)) {
			readedUser = store.selectUser(user.getEmail());
		}
		System.out.println(readedUser.getEmail());
		return readedUser;
	}
	
	private boolean validate(User user) {
		//
		if (user == null) {
			throw new RuntimeException("사용자 정보가 없습니다.");
		} else if (user.getEmail() == null || user.getEmail().isEmpty()) {
			throw new RuntimeException("ID가 없습니다.");
		} else if (user.getPassword() == null || user.getPassword().isEmpty()) {
			throw new RuntimeException("비밀번호가 없습니다.");
		}
		return true;
	}
	

}

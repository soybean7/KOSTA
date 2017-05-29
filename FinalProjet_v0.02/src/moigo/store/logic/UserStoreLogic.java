package moigo.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import moigo.domain.User;
import moigo.store.UserStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.UserMapper;

@Repository
public class UserStoreLogic implements UserStore {

	@Override
	public boolean insertUser(User user) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.insertUser(user);
		session.close();
		return true;
	}

	@Override
	public int updateUser(User user) {
		int update = 0;
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		update = mapper.updateUser(user);
		session.close();
		return update;
	}

	@Override
	public boolean deleteUser(String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.deleteUser(userEmail);
		session.close();
		return true;
	}

	@Override
	public List<User> selectUserByEmail(String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		List<User> users = mapper.selectUserByEmail(userEmail);
		session.close();
		return users;
	}

	@Override
	public List<User> selectUserByName(String name) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		List<User> users = mapper.selectUserByName(name);
		session.close();
		return users;
	}

	@Override
	public User selectUser(String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		UserMapper mapper = session.getMapper(UserMapper.class);
		User user = mapper.selectUser(userEmail);
		session.close();
		return user;
	}

}

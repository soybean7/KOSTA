package test.store;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.User;
import moigo.store.UserStore;
import moigo.store.logic.UserStoreLogic;

public class UserTest {
	
	private UserStore store;
	
	@Before
	public void setUp(){
		store = new UserStoreLogic();
	}

//	@Test
//	public void testInsertUser() {
//		User user = new User();
//		user.setEmail("123");
//		user.setName("kang");
//		user.setPassword("1234");
//		user.setPhoneNumber("0102222222");
//		store.insertUser(user);
//	}

//	@Test
//	public void testUpdateUser() {
//		User user = new User();
//		user.setEmail("123");
//		user.setName("kang");
//		user.setPassword("123");
//		user.setPhoneNumber("01088887777");
//		store.updateUser(user);
//	}

//	@Test
//	public void testDeleteUser() {
//		User user = new User();
//		user.setEmail("123");
//		user.setName("kang");
//		user.setPassword("123");
//		user.setPhoneNumber("01088887777");
//		store.deleteUser(user.getEmail());
//	}

//	@Test
//	public void testSelectUserByEmail() {
//		List<User> list = store.selectUserByEmail("123");
//		assertEquals(1,list.size());
//	}

//	@Test
//	public void testSelectUserByName() {
//		List<User> list = store.selectUserByName("kang");
//		assertEquals(1, list.size());
//	}

	@Test
	public void testSelectUser() {
		User user = store.selectUser("123");
		assertEquals("123", user.getEmail());
	}

}

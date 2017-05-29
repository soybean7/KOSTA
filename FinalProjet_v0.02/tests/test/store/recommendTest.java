package test.store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.Meeting;
import moigo.store.RecommendStore;
import moigo.store.logic.RecommendStoreLogic;


public class recommendTest {

	private RecommendStore store;
	
	@Before
	public void setup(){
		store = new RecommendStoreLogic();
	}
	
//	@Test
//	public void testInsertMeeting() {
//		Meeting recommend = new Meeting();
//		Date today = new Date(Calendar.getInstance().getTimeInMillis());
//
//
//		recommend.setTitle("test");
//		recommend.setStartDate(today);
//		recommend.setEndDate(today);
//		recommend.setPlace("test");
//		recommend.setGuidence("test");
//		recommend.setContent("test");
//		
//		store.insertMeeting(recommend);
//		assertEquals("test", recommend.getTitle());
//	}
//
//	@Test
//	public void testUpdateMeeting() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testDeleteMeeting() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAllMeeting() {
//		List<Meeting> list = store.selectAllMeeting();
//		
//		assertEquals(3, list.size());
//	}
//
//	@Test
//	public void testSelectMeetingById() {
//		Meeting meeting = store.selectMeetingById(100);
//		
////		List<String> list = meeting.getHashtags();
////		System.out.println(list.size());
////		if(list != null){
////			for(String s : list){
////				System.out.println(s);
////			}
////		}else {
////			System.out.println("null");
////		}
//		
//		assertEquals(100, meeting.getMeetingId());
//		assertEquals("가산에서스터디해요", meeting.getTitle());
//		assertEquals(3, meeting.getHashtags().size());
//	}
//
//	@Test
//	public void testSelectMeetingByTitle() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectMeetingByRegion() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectMeetingByCategory() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectMeetingByHashtag() {
//		fail("Not yet implemented");
//	}
//
	@Test
	public void testLoveMeeting() {
		store.loveMeeting(1001, "test@test.com");
		
		assertEquals(3, store.selectLoveUserById(1001).size());
	}
//
//	@Test
//	public void testSelectMeetingByLoveSort() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectLoveUserById() {
//		List<String> users = store.selectLoveUserById(101);
//		
//		for(String s : users){
//			System.out.println(s);
//		}
//		
//		assertEquals(1, users.size());
//	}
	
}

package store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.Calendar;

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
	
	@Test
	public void testInsertMeeting() {
		Meeting recommend = new Meeting();
		Date today = new Date(Calendar.getInstance().getTimeInMillis());


		recommend.setTitle("test");
		recommend.setStartDate(today);
		recommend.setEndDate(today);
		recommend.setPlace("test");
		recommend.setGuidence("test");
		recommend.setContent("test");
		
		store.insertMeeting(recommend);
		assertEquals("test", recommend.getTitle());
	}

/*	@Test
	public void testUpdateMeeting() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteMeeting() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectAllMeeting() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingById() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingByTitle() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingByRegion() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingByCategory() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingByHashtag() {
		fail("Not yet implemented");
	}

	@Test
	public void testLoveMeeting() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectMeetingByLoveSort() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectLoveUserById() {
		fail("Not yet implemented");
	}
*/
}

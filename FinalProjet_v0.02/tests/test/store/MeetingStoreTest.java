package test.store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.Meeting;
import moigo.store.MeetingStore;
import moigo.store.logic.MeetingStoreLogic;

public class MeetingStoreTest {

	private MeetingStore store;
	
	@Before
	public void setUp() {
		store = new MeetingStoreLogic();
	}
	
//	@Test
//	public void insertTest() {
//		Meeting meeting = new Meeting();
//		meeting.setContact("haha");
//		meeting.setContent("haha");
//		meeting.setRegUser("haha");
//		meeting.setFee(3);
//		meeting.setGuidence("haha");
//		meeting.setPlace("haha");
//		meeting.setTitle("haha");
//		store.insertMeeting(meeting);
//		System.out.println(store.selectMeetingById(4).getTitle());
//	}
	
//	@Test
//	public void updateTest() {
//		Meeting meeting = store.selectMeetingById(3);
//		meeting.setTitle("change");
//		store.updateMeeting(meeting);
//	}
	
//	@Test
//	public void deleteTest() {
//		store.deleteMeeting(4);
//	}
	
	@Test
	public void selectAllTest() {
		Date date = new Date(117,4,24);
		List<Meeting> list = store.selectMeetingByPlace("haha");
		for(Meeting meeting : list) {
			System.out.println(meeting.getTitle());
		}
	}
}

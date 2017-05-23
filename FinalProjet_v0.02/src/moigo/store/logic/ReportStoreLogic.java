package moigo.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import moigo.domain.Meeting;
import moigo.domain.User;
import moigo.store.ReportStore;

@Repository
public class ReportStoreLogic implements ReportStore{

	@Override
	public void reportMeeting(int meetingId) {
		
	}

	@Override
	public List<Meeting> selectAllReportedMeeting() {
		return null;
	}

	@Override
	public List<Meeting> selectReportedMeetingByTitle(String title) {
		return null;
	}

	@Override
	public List<User> selectAllReportedUser() {
		return null;
	}

	@Override
	public List<User> selectReportedUserByEmail(String userEmail) {
		return null;
	}

	@Override
	public List<User> selectReportedUserByName(String name) {
		return null;
	}

	@Override
	public void registReportUser(String userEmail, int day) {
		
	}
	
	

}

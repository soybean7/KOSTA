package onoffmix.store.logic;

import java.util.List;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;
import onoffmix.store.ReportStore;

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

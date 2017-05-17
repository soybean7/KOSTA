package onoffmix.service.logic;

import java.util.List;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;
import onoffmix.service.ReportService;

public class ReportServiceLogic implements ReportService{

	@Override
	public void reportMeeting(int meetingId) {
		
	}

	@Override
	public List<Meeting> searchAllReportedMeeting() {
		return null;
	}

	@Override
	public List<Meeting> searchReportedMeetingByTitle(String title) {
		return null;
	}

	@Override
	public List<User> searchAllReportedUser() {
		return null;
	}

	@Override
	public List<User> searchReportedUserByEmail(String userEmail) {
		return null;
	}

	@Override
	public List<User> searchReportedUserByName(String name) {
		return null;
	}

	@Override
	public void stopUserByDate(String userEmail, int day) {
		
	}
	
}

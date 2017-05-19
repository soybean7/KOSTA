package onoffmix.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;
import onoffmix.service.ReportService;
import onoffmix.store.ReportStore;

@Service
public class ReportServiceLogic implements ReportService{

	@Autowired
	private ReportStore store;
	
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

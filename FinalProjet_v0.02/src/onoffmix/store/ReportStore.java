package onoffmix.store;

import java.util.List;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;

public interface ReportStore {
	
	void reportMeeting(int meetingId);
	List<Meeting> selectAllReportedMeeting();
	List<Meeting> selectReportedMeetingByTitle(String title);
	List<User> selectAllReportedUser();
	List<User> selectReportedUserByEmail(String userEmail);
	List<User> selectReportedUserByName(String name);
	void registReportUser(String userEmail, int day);

}

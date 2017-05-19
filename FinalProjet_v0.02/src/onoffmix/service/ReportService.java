package onoffmix.service;

import java.util.List;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;

//written SHKim at 20170517
public interface ReportService {
	
	void reportMeeting(int meetingId);
	
	List<Meeting> searchAllReportedMeeting();
	
	List<Meeting> searchReportedMeetingByTitle(String title);
	
	List<User> searchAllReportedUser();
	
	List<User> searchReportedUserByEmail(String userEmail);
	
	List<User> searchReportedUserByName(String name);
	
	void stopUserByDate(String userEmail, int day);

}

package onoffmix.service;

import java.sql.Date;
import java.util.List;

import onoffmix.domain.Meeting;

//written SHKim at 20170517
public interface MeetingService {
	
	int registMeeting(Meeting meeting);

	int modifyMeeting(Meeting meeting);
	
	boolean removeMeeting(int meetingId);
	
	List<Meeting> searchAllMeeting();
	
	Meeting searchMeetingById(int meetingId);
	
	List<Meeting> searchMeetingByTitle(String title);
	
	List<Meeting> searchMeetingByContent(String content);
	
	List<Meeting> searchMeetingByDate(Date date);
	
	List<Meeting> searchMeetingByPlace(String place);
	
	List<Meeting> searchMeetingByCategory(String category);
	
	List<Meeting> searchMeetingByHashtag(String hashtag);
	
	List<Meeting> searchMeetingByRequest(String email);
	
	List<Meeting> searchMeetingByDone(String email);
	
	void cancelRequestMeeting(int meetingId, String userEmail);
	
	void joinRequestMeeting(int meetingId, String userEmail);

}

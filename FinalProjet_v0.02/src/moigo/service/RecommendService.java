package moigo.service;

import java.util.List;

import moigo.domain.Meeting;
import moigo.domain.User;

public interface RecommendService {
	
	int registMeeting(Meeting meeting);
	List<String> showRegistMeeting();
	int modifyMeeting(Meeting meeting);
	boolean removeMeeting(int meetingId);
	List<Meeting> searchAllMeeting();
	Meeting searchMeetingById(int meetingId);
	List<Meeting> searchMeetingByName(String recName);
	List<Meeting> searchMeetingByTitle(String recName);
	List<Meeting> searchMeetingByRegion(String recPlace);
	List<Meeting> searchMeetingByCategory(String recCategory);
	List<Meeting> searchMeetingByHashtag(String recHashtag);
	boolean loveMeeting(int meetingId, String userEmail);
	boolean hateMeeting(int meetingId, String userEmail);
	List<Meeting> searchMeetingByLoveSort(User user);
	List<String> searchLoveUserById(int meetingId);
	List<String> searchHashtagForMeeting(int meetingId);
}

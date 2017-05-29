package moigo.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import moigo.domain.Meeting;

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

	List<String> searchMeetingUserByMeetingId(int meetingId);

	List<Meeting> searchMeetingByEmail(String email);

	void cancelRequestMeeting(int meetingId, String userEmail);

	void joinRequestMeeting(int meetingId, String userEmail);

	List<String> searchCategory();
	
	String searchMyCategory(int meetingId);

	List<String> searchHashtag(int meetingId);

	int checkHashtag(String hashtag);

	int registHashtag(String hashtag);

	boolean registMeetingHashtag(int meetingId, int hashtagId);
	
	boolean registMeetingCategory(int meetingId, String category);
}

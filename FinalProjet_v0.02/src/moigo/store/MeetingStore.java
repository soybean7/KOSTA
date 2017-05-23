package moigo.store;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import moigo.domain.Meeting;

public interface MeetingStore {
	
	int insertMeeting(Meeting meeting);
	int updateMeeting(Meeting meeting);
	int deleteMeeting(int meetingId);
	List<Meeting> selectAllMeeting();
	Meeting selectMeetingById(int meetingId);
	List<Meeting> selectMeetingByTitle(String title);
	List<Meeting> selectMeetingByContent(String content);
	List<Meeting> selectMeetingByDate(Date date);
	List<Meeting> selectMeetingByPlace(String place);
	List<Meeting> selectMeetingByCategory(String category);
	List<Meeting> selectMeetingByHashtag(String hashtag);
	List<Meeting> selectMeetingByReqeust(String email);
	List<Meeting> selectMeetingByDone(String email);
	void registRequestMeeting(int meetingId, String userEmail);
	void deleteRequestMeeting(int meetingId, String userEmail);

}

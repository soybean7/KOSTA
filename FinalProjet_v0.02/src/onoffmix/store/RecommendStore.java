package onoffmix.store;

import java.util.List;

import onoffmix.domain.Meeting;

public interface RecommendStore {
	
	int insertMeeting(Meeting meeting);
	void updateMeeting(Meeting meeting);
	int deleteMeeting(int meetingId);
	List<Meeting> selectAllMeeting();
	Meeting selectMeetingById(int meetingId);
	List<Meeting> selectMeetingByTitle(String recName);
	List<Meeting> selectMeetingByRegion(String recPlace);
	List<Meeting> selectMeetingByCategory(String recCategory);
	List<Meeting> selectMeetingByHashtag(String recHashtag);
	void loveMeeting(int meetingId, String userEmail);
	List<Meeting> selectMeetingByLoveSort();
	List<String> selectLoveUserById(int meetingId);

}

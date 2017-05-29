package moigo.store;

import java.util.List;

import moigo.domain.Meeting;

public interface RecommendStore {
	
	int insertMeeting(Meeting meeting);
	int updateMeeting(Meeting meeting);
	int deleteMeeting(int meetingId);
	List<Meeting> selectAllMeeting();
	Meeting selectMeetingById(int meetingId);
	List<Meeting> selectMeetingByTitle(String recName);
	List<Meeting> selectMeetingByRegion(String recPlace);
	List<Meeting> selectMeetingByCategory(String recCategory);
	List<Meeting> selectMeetingByHashtag(String recHashtag);
	boolean loveMeeting(int meetingId, String userEmail);
	boolean hateMeeting(int meetingId, String userEmail);
	List<Meeting> selectMeetingByLoveSort();
	List<String> selectLoveUserById(int meetingId);

	List<String> showCategory();
	int selectCategory(String category);
	int insertCategoryMeeting(int meetingId, int categoryId);
	
	int insertHashtag(String hashtag);
	int insertHashtagMeeting(Meeting meeting, int hashtagId);
	int updateHashtagMeeting(int meetingId, int hashtagId, String hashtag);
	int deleteHashtagMeeting(int meetingId);
	Integer selectHashtag(String hashtag);
	List<String> selectHashtagForMeeting(int meetingId);
}

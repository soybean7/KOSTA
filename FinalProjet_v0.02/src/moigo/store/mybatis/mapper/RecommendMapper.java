package moigo.store.mybatis.mapper;

import java.util.HashMap;
import java.util.List;

import moigo.domain.Meeting;

public interface RecommendMapper {

	int insertMeeting(Meeting meeting);
	
	int updateMeeting(Meeting meeting);
	
	int deleteMeeting(int meetingId);
	
	List<Meeting> selectAllMeeting();
	
	Meeting selectMeetingById(int meetingId);
	
	List<Meeting> selectMeetingByTitle(String recName);
	
	List<Meeting> selectMeetingByRegion(String recPlace);
	
	List<Meeting> selectMeetingByCategory(String recCategory);
	
	List<Meeting> selectMeetingByHashtag(String recHashtag);
	
	int loveMeeting(HashMap<String, Object> map);
	
	int hateMeeting(HashMap<String, Object> map);
	
	List<Meeting> selectMeetingByLoveSort();
	
	List<String> selectLoveUserById(int meetingId);
	
	List<String> showCategory();
	int selectCategory(String category);
	int insertCategoryMeeting(HashMap<String,Object> map);
	
	int insertHashtag(String hashtag);
	int insertHashtagMeeting(HashMap<String, Object> map);
	int updateHashtagMeeting(HashMap<String, Object> map);
	int deleteHashtagMeeting(int meetingId);
	Integer selectHashtag(String hashtag);
	List<String> selectHashtagForMeeting(int meetingId);

	
}

package moigo.service.logic;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moigo.domain.Meeting;
import moigo.service.MeetingService;
import moigo.store.MeetingStore;

@Service
public class MeetingServiceLogic implements MeetingService{

	@Autowired
	private MeetingStore store;
	
	@Override
	public int registMeeting(Meeting meeting) {
		return store.insertMeeting(meeting);
	}

	@Override
	public int modifyMeeting(Meeting meeting) {
		return store.updateMeeting(meeting);
	}

	@Override
	public boolean removeMeeting(int meetingId) {
		return store.deleteMeeting(meetingId) > 0;
	}

	@Override
	public List<Meeting> searchAllMeeting() {
		return store.selectAllMeeting();
	}

	@Override
	public Meeting searchMeetingById(int meetingId) {
		return store.selectMeetingById(meetingId);
	}

	@Override
	public List<Meeting> searchMeetingByTitle(String title) {
		return store.selectMeetingByTitle(title);
	}

	@Override
	public List<Meeting> searchMeetingByContent(String content) {
		return store.selectMeetingByContent(content);
	}

	@Override
	public List<Meeting> searchMeetingByDate(Date date) {
		return store.selectMeetingByDate(date);
	}

	@Override
	public List<Meeting> searchMeetingByPlace(String place) {
		return store.selectMeetingByPlace(place);
	}

	@Override
	public List<Meeting> searchMeetingByCategory(String category) {
		return store.selectMeetingByCategory(category);
	}

	@Override
	public List<Meeting> searchMeetingByHashtag(String hashtag) {
		return store.selectMeetingByHashtag(hashtag);
	}

	@Override
	public List<Meeting> searchMeetingByRequest(String email) {
		return store.selectMeetingByReqeust(email);
	}

	@Override
	public List<Meeting> searchMeetingByDone(String email) {
		return store.selectMeetingByDone(email);
	}
	
	@Override
	public List<String> searchMeetingUserByMeetingId(int meetingId) {
		return store.selectMeetingUserByMeetingId(meetingId);
	}
	
	@Override
	public List<Meeting> searchMeetingByEmail(String email) {
		return store.selectMeetingByEmail(email);
	}

	@Override
	public void cancelRequestMeeting(int meetingId, String userEmail) {
		store.deleteRequestMeeting(meetingId, userEmail);
	}

	@Override
	public void joinRequestMeeting(int meetingId, String userEmail) {
		store.registRequestMeeting(meetingId, userEmail);
	}

	@Override
	public List<String> searchCategory() {
		return store.selectCategory();
	}
	
	@Override
	public String searchMyCategory(int meetingId) {
		return store.selectMyCategory(meetingId);
	}

	@Override
	public List<String> searchHashtag(int meetingId) {
		return store.selectHashtag(meetingId);
	}

	@Override
	public int checkHashtag(String hashtag) {
		return store.checkHashtag(hashtag);
	}

	@Override
	public int registHashtag(String hashtag) {
		return store.insertHashtag(hashtag);
	}

	@Override
	public boolean registMeetingHashtag(int meetingId, int hashtagId) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("hashtag_id", hashtagId);
		map.put("meeting_id", meetingId);
		return store.insertMeetingHashtag(map);
	}

	@Override
	public boolean registMeetingCategory(int meetingId, String category) {
		HashMap<String, Object> map = new HashMap<>();
		int categoryId = store.selectCategoryIdByCategory(category);
		map.put("categoryId", categoryId);
		map.put("meetingId", meetingId);
		return store.insertMeetingCategory(map);
	}
	
}

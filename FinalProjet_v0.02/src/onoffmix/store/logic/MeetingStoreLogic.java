package onoffmix.store.logic;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import onoffmix.domain.Meeting;
import onoffmix.store.MeetingStore;

public class MeetingStoreLogic implements MeetingStore{

	@Override
	public int insertMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public int updateMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public boolean deleteMeeting(int meetingId) {
		return false;
	}

	@Override
	public List<Meeting> selectAllMeeting() {
		return null;
	}

	@Override
	public Meeting selectMeetingById(int meetingId) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByTitle(String title) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByContent(String content) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByDate(Date date) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByPlace(String place) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByCategory(String category) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByHashtag(String hashtag) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByReqeust(String email) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByDone(String email) {
		return null;
	}

	@Override
	public void registRequestMeeting(int meetingId, String userEmail) {
		
	}

	@Override
	public void deleteRequestMeeting(int meetingId, HttpSession session) {
		
	}
	
}

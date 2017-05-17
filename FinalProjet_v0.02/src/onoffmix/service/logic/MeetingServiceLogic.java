package onoffmix.service.logic;

import java.sql.Date;
import java.util.List;

import onoffmix.domain.Meeting;
import onoffmix.service.MeetingService;

public class MeetingServiceLogic implements MeetingService{

	@Override
	public int registMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public int modifyMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public boolean removeMeeting(int meetingId) {
		return false;
	}

	@Override
	public List<Meeting> searchAllMeeting() {
		return null;
	}

	@Override
	public Meeting searchMeetingById(int meetingId) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByTitle(String title) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByContent(String content) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByDate(Date date) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByPlace(String place) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByCategory(String category) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByHashtag(String hashtag) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByRequest(String email) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByDone(String email) {
		return null;
	}

	@Override
	public void cancelRequestMeeting(int meetingId, String userEmail) {
		
	}

	@Override
	public void joinRequestMeeting(int meetingId, String userEmail) {
		
	}
	
	

}

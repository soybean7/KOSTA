package onoffmix.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import onoffmix.domain.Meeting;
import onoffmix.domain.User;
import onoffmix.service.RecommendService;
import onoffmix.store.RecommendStore;

@Service
public class RecommendServiceLogic implements RecommendService{

	@Autowired
	private RecommendStore store;
	
	@Override
	public int registMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public boolean modifyMeeting(Meeting meeting) {
		return false;
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
	public List<Meeting> searchMeetingByName(String recName) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByTitle(String recName) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByRegion(String recPlace) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByCategory(String recCategory) {
		return null;
	}

	@Override
	public List<Meeting> searchMeetingByHashtag(String recHashtag) {
		return null;
	}

	@Override
	public void loveMeeting(int meetingId, String userEmail) {
		
	}

	@Override
	public List<Meeting> searchMeetingByLoveSort(User user) {
		return null;
	}

	@Override
	public List<User> searchLoveUserById(int meetingId) {
		return null;
	}
	
	

}

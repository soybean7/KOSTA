package onoffmix.store.logic;

import java.util.List;

import org.springframework.stereotype.Repository;

import onoffmix.domain.Meeting;
import onoffmix.store.RecommendStore;

@Repository
public class RecommnedStoreLogic implements RecommendStore{

	@Override
	public int insertMeeting(Meeting meeting) {
		return 0;
	}

	@Override
	public void updateMeeting(Meeting meeting) {
		
	}

	@Override
	public int deleteMeeting(int meetingId) {
		return 0;
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
	public List<Meeting> selectMeetingByTitle(String recName) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByRegion(String recPlace) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByCategory(String recCategory) {
		return null;
	}

	@Override
	public List<Meeting> selectMeetingByHashtag(String recHashtag) {
		return null;
	}

	@Override
	public void loveMeeting(int meetingId, String userEmail) {
		
	}

	@Override
	public List<Meeting> selectMeetingByLoveSort() {
		return null;
	}

	@Override
	public List<String> selectLoveUserById(int meetingId) {
		return null;
	}
	
	

}

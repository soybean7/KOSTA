package moigo.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moigo.domain.Meeting;
import moigo.domain.User;
import moigo.service.RecommendService;
import moigo.store.RecommendStore;

@Service
public class RecommendServiceLogic implements RecommendService {

	@Autowired
	private RecommendStore store;

	@Override
	public List<String> showRegistMeeting() {

		return store.showCategory();
	}

	@Override
	public int registMeeting(Meeting meeting) {

		int insert = store.insertMeeting(meeting);

		for (String hashtag : meeting.getHashtags()) {
			Integer hashtagId = store.selectHashtag(hashtag); // mapper에서 int는
																// null을 못받아와서
																// Integer사용
			if (hashtagId == null) {
				store.insertHashtag(hashtag);
				Integer searchHashtag = store.selectHashtag(hashtag);
				store.insertHashtagMeeting(meeting, searchHashtag);
			} else {
				store.insertHashtagMeeting(meeting, hashtagId);
			}
		}

		int categoryId = store.selectCategory(meeting.getCategory());
		store.insertCategoryMeeting(meeting.getMeetingId(), categoryId);

		return insert;
	}

	@Override
	public int modifyMeeting(Meeting meeting) {
		int modify = store.updateMeeting(meeting);
//		store.deleteHashtagMeeting(meeting.getMeetingId());
		
		//System.out.println("service hashtags" + meeting.getHashtags());
		for (String hashtag : meeting.getHashtags()) {
			Integer hashtagId = store.selectHashtag(hashtag); 
			/*System.out.println("service hashtag   " + hashtag);

			List<String> myTag = store.selectHashtagForMeeting(meeting.getMeetingId());
			for (String tag : myTag) {
				if (tag != hashtag) {
					Integer hashtagId = store.selectHashtag(hashtag); // mapper에서 int는
																	  // null을 못받아와서
																	  // Integer사용
					System.out.println("hashtagId   " + hashtagId);
					if (hashtagId == null) {
						System.out.println("null   " + hashtag);
						store.insertHashtag(hashtag);
						Integer searchHashtag = store.selectHashtag(hashtag);
						store.insertHashtagMeeting(meeting, searchHashtag);
					} else {
						System.out.println("else  " + hashtag);
						store.updateHashtagMeeting(meeting.getMeetingId(), hashtagId);
					}
				}
			} */
			if (hashtagId == null) {
				//System.out.println("null   " + hashtag);
				store.insertHashtag(hashtag);
				Integer searchHashtag = store.selectHashtag(hashtag);
				store.insertHashtagMeeting(meeting, searchHashtag);
			} else {
				System.out.println("else  " + hashtag);
				store.insertHashtagMeeting(meeting, hashtagId);
			}
		}

	
/*		for (String hashtag : meeting.getHashtags()) {
			Integer hashtagId = store.selectHashtag(hashtag); // mapper에서 int는
																// null을 못받아와서
																// Integer사용
			if (hashtagId == null) {
				store.insertHashtag(hashtag);
				Integer searchHashtag = store.selectHashtag(hashtag);
				store.updateHashtagMeeting(meeting.getMeetingId(), searchHashtag, hashtag);
			}
				
			store.updateHashtagMeeting(meeting.getMeetingId(), hashtagId, hashtag);
			
		}*/
	
		return modify;
	}

	@Override
	public boolean removeMeeting(int meetingId) {

		if (store.deleteMeeting(meetingId) > 0) {
			store.deleteHashtagMeeting(meetingId);
			return true;
		}
		return false;
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
	public boolean loveMeeting(int meetingId, String userEmail) {
		return store.loveMeeting(meetingId, userEmail);
	}
	@Override
	public boolean hateMeeting(int meetingId, String userEmail) {
		return store.hateMeeting(meetingId, userEmail);
	}
	@Override
	public List<Meeting> searchMeetingByLoveSort(User user) {
		return null;
	}

	@Override
	public List<String> searchLoveUserById(int meetingId) {
		return store.selectLoveUserById(meetingId);
	}

	@Override
	public List<String> searchHashtagForMeeting(int meetingId) {
		return store.selectHashtagForMeeting(meetingId);
	}

}

package moigo.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import moigo.domain.Meeting;
import moigo.store.RecommendStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.RecommendMapper;

@Repository
public class RecommnedStoreLogic implements RecommendStore{

	@Override
	public int insertMeeting(Meeting meeting) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);
		
		mapper.insertMeeting(meeting);
		session.close();
		
		return meeting.getMeetingId();
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
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);
		
		List<Meeting> recommendMeetings = mapper.selectAllMeeting();
		session.close();
		
		return recommendMeetings;
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

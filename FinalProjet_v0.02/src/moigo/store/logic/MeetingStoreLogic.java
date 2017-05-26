package moigo.store.logic;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import moigo.domain.Meeting;
import moigo.store.MeetingStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.MeetingMapper;

@Repository
public class MeetingStoreLogic implements MeetingStore{

	@Override
	public int insertMeeting(Meeting meeting) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		mapper.insertMeeting(meeting);
		session.close();
		
		return meeting.getMeetingId();
	}

	@Override
	public int updateMeeting(Meeting meeting) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		int updateCount = mapper.updateMeeting(meeting);
		session.close();
		
		return updateCount;
	}

	@Override
	public int deleteMeeting(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		int deleteCount = mapper.deleteMeeting(meetingId);
		session.close();
		
		return deleteCount;
	}

	@Override
	public List<Meeting> selectAllMeeting() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectAllMeeting();
		session.close();
		
		return list;
	}

	@Override
	public Meeting selectMeetingById(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		Meeting meeting = mapper.selectMeetingById(meetingId);
		session.close();
		
		return meeting;
	}

	@Override
	public List<Meeting> selectMeetingByTitle(String title) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByTitle(title);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByContent(String content) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByContent(content);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByDate(Date date) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByDate(date);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByPlace(String place) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByPlace(place);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByCategory(String category) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByCategory(category);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByHashtag(String hashtag) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByHashtag(hashtag);
		session.close();
		
		return list;
	}
	
	@Override
	public List<Meeting> selectMeetingByReqeust(String email) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByReqeust(email);
		session.close();
		
		return list;
	}

	@Override
	public List<Meeting> selectMeetingByDone(String email) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> list = mapper.selectMeetingByDone(email);
		session.close();
		
		return list;
	}

	@Override
	public List<String> selectMeetingUserByMeetingId(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		
		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<String> meetingUser = mapper.selectMeetingUserByMeetingId(meetingId);
		
		return meetingUser;
	}

	@Override
	public List<Meeting> selectMeetingByEmail(String email) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		
		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		
		List<Meeting> meeting = mapper.selectMeetingByEmail(email);
		
		return meeting;
	}

	@Override
	public void registRequestMeeting(int meetingId, String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
//		two parameter,, HASHMAP or DOMAIN
		HashMap<String, Object> map = new HashMap<>();
		map.put("meetingId", meetingId);
		map.put("userEmail", userEmail);
		mapper.registRequestMeeting(map);
		session.close();
	}

	@Override
	public void deleteRequestMeeting(int meetingId, String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();

		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
//		two parameter,, HASHMAP or DOMAIN
		HashMap<String, Object> map = new HashMap<>();
		map.put("meetingId", meetingId);
		map.put("userEmail", userEmail);
		mapper.deleteRequestMeeting(map);
		session.close();
	}

	@Override
	public List<String> selectCategory() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		
		MeetingMapper mapper = session.getMapper(MeetingMapper.class);
		List<String> category = mapper.selectCategory();
		session.close();
		
		return category;
	}	
}

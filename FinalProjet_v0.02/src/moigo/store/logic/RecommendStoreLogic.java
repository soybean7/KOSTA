package moigo.store.logic;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import moigo.domain.Meeting;
import moigo.store.RecommendStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.RecommendMapper;

@Repository
public class RecommendStoreLogic implements RecommendStore {

	@Override
	public int insertMeeting(Meeting meeting) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		mapper.insertMeeting(meeting);
		session.close();

		return meeting.getMeetingId();
	}

	@Override
	public int updateMeeting(Meeting meeting) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		int update = mapper.updateMeeting(meeting);
		session.close();

		return update;
	}

	@Override
	public int deleteMeeting(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		int delete = mapper.deleteMeeting(meetingId);
		session.close();

		return delete;
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
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		Meeting meeting = mapper.selectMeetingById(meetingId);
		session.close();

		return meeting;
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
	public boolean loveMeeting(int meetingId, String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);
		boolean result = false;

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("meetingId", meetingId);
		map.put("userEmail", userEmail);

		try {
			if (mapper.loveMeeting(map) > 0) {
				result = true;
			}
		} catch (Exception e) {
			// 이미 찜했을 경우
			System.out.println(e);
		} finally {
			session.close();
		}
		System.out.println(result);
		return result;
	}

	@Override
	public List<Meeting> selectMeetingByLoveSort() {
		return null;
	}

	@Override
	public List<String> showCategory() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		List<String> category = mapper.showCategory();
		session.close();

		return category;
	}

	@Override
	public int insertHashtag(String hashtag) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		int insertHashtag = mapper.insertHashtag(hashtag);
		session.close();
		return insertHashtag;
	}

	@Override
	public int insertHashtagMeeting(Meeting meeting, int hashtagId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		HashMap<String, Object> map = new HashMap<>();
		map.put("meetingId", meeting.getMeetingId());
		map.put("hashtagId", hashtagId);
		int insertHashtagMeeting = mapper.insertHashtagMeeting(map);
		session.close();
		return insertHashtagMeeting;
	}

	@Override
	public Integer selectHashtag(String hashtag) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		Integer hashtagId = mapper.selectHashtag(hashtag);
		session.close();

		return hashtagId;
	}

	@Override
	public boolean hateMeeting(int meetingId, String userEmail) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);
		boolean result = false;

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("meetingId", meetingId);
		map.put("userEmail", userEmail);

		if (mapper.hateMeeting(map) > 0)
			result = true;
		return result;
	}

	@Override
	public int selectCategory(String category) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		int categoryId = mapper.selectCategory(category);
		session.close();

		return categoryId;
	}

	@Override
	public int insertCategoryMeeting(int meetingId, int categoryId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		HashMap<String, Object> map = new HashMap<>();
		map.put("categoryId", categoryId);
		map.put("meetingId", meetingId);

		int insertCategoryMeeting = mapper.insertCategoryMeeting(map);
		session.close();
		return insertCategoryMeeting;
	}

	@Override
	public List<String> selectHashtagForMeeting(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		List<String> hashtag = mapper.selectHashtagForMeeting(meetingId);
		session.close();
		return hashtag;
	}

	@Override
	public int updateHashtagMeeting(int meetingId, int hashtagId, String hashtag) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		HashMap<String, Object> map = new HashMap<>();
		map.put("meetingId", meetingId);
		map.put("hashtagId", hashtagId);
		map.put("hashtag", hashtag);
		int modify = mapper.updateHashtagMeeting(map);
		session.close();
		return modify;
	}

	@Override
	public int deleteHashtagMeeting(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		int delete = mapper.deleteHashtagMeeting(meetingId);
		session.close();
		return delete;
	}

	@Override
	public List<String> selectLoveUserById(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		RecommendMapper mapper = session.getMapper(RecommendMapper.class);

		List<String> users = mapper.selectLoveUserById(meetingId);
		session.close();

		return users;
	}
}
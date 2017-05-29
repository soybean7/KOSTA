package moigo.store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import moigo.domain.Meeting;
import moigo.domain.Report;
import moigo.domain.User;
import moigo.store.ReportStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.ReportMapper;

@Repository
public class ReportStoreLogic implements ReportStore{

	@Override
	public void reportMeeting(int meetingId) {
		
	}

	@Override
	public List<Meeting> selectAllReportedMeeting() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		ReportMapper mapper = session.getMapper(ReportMapper.class);
		
//		List<Report> = mapper.selectAllReportedMeeting();
		
		session.close();
		
		return null; 
	}

	@Override
	public List<Meeting> selectReportedMeetingByTitle(String title) {
		return null;
	}

	@Override
	public List<User> selectAllReportedUser() {
		return null;
	}

	@Override
	public List<User> selectReportedUserByEmail(String userEmail) {
		return null;
	}

	@Override
	public List<User> selectReportedUserByName(String name) {
		return null;
	}

	@Override
	public void registReportUser(String userEmail, int day) {
		
	}
	
	

}

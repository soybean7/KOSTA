package moigo.store.mybatis.mapper;

import java.util.List;

import moigo.domain.Meeting;
import moigo.domain.User;

public interface ReportMapper {

	void reportMeeting(int meetingId);

	List<Meeting> selectAllReportedMeeting();

	List<Meeting> selectReportedMeetingByTitle(String title);

	List<User> selectAllReportedUser();

	List<User> selectReportedUserByEmail(String userEmail);

	List<User> selectReportedUserByName(String name);

	void registReportUser(String userEmail, int day);

}

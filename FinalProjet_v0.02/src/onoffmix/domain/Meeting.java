package onoffmix.domain;

import java.sql.Date;
import java.util.List;

public class Meeting {
	private int meetingId;
	private String title;
	private String category;
	private Date date;
	private Date startDate;
	private Date endDate;
	private String place;
	private String hashtag;
	private int fee;
	private int participants;
	private String guidence;
	private String content;
	private String contact;
	private int reportCount;
	private Date regDate;
	private User regUser;
	private List<User> joinUser;
	private String sugContents;
	private Date sugStartDate;
	private Date sugEndDate;
}

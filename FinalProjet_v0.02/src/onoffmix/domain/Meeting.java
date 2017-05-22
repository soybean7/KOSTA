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

	public int getMeetingId() {
		return meetingId;
	}

	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	public int getParticipants() {
		return participants;
	}

	public void setParticipants(int participants) {
		this.participants = participants;
	}

	public String getGuidence() {
		return guidence;
	}

	public void setGuidence(String guidence) {
		this.guidence = guidence;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public User getRegUser() {
		return regUser;
	}

	public void setRegUser(User regUser) {
		this.regUser = regUser;
	}

	public List<User> getJoinUser() {
		return joinUser;
	}

	public void setJoinUser(List<User> joinUser) {
		this.joinUser = joinUser;
	}

	public String getSugContents() {
		return sugContents;
	}

	public void setSugContents(String sugContents) {
		this.sugContents = sugContents;
	}

	public Date getSugStartDate() {
		return sugStartDate;
	}

	public void setSugStartDate(Date sugStartDate) {
		this.sugStartDate = sugStartDate;
	}

	public Date getSugEndDate() {
		return sugEndDate;
	}

	public void setSugEndDate(Date sugEndDate) {
		this.sugEndDate = sugEndDate;
	}

}

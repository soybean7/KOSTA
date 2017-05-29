package test.store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.Ad;
import moigo.domain.Meeting;
import moigo.store.AdStore;
import moigo.store.MeetingStore;
import moigo.store.logic.AdStoreLogic;
import moigo.store.logic.MeetingStoreLogic;

public class AdStoreTest {
	
	private AdStore adStore;
	private MeetingStore meetingStore;
	
	@Before
	public void setup(){
		adStore = new AdStoreLogic();
		meetingStore = new MeetingStoreLogic();
		
	}

//	@Test
//	public void testInsertAd() {
//		
//		Ad ad = new Ad();
//		Date startDate = new Date(117,4,10);
//		Date endDate = new Date(117,5,31);
//		
//		ad.setAdId(3);
//		ad.setEmail("3email@email.com");
//		ad.setName("이름3");
//		ad.setPhoneNumber("333");
//		ad.setProduct("3기본요금");
//		ad.setMeetingTitle("3title");
//		ad.setStartDate(startDate);
//		ad.setEndDate(endDate);
//		ad.setQuestion("3what");
//		ad.setMeetingId(3);
//
//		store.insertAd(ad);
//		
//	}
//
//	@Test
//	public void testApproveAd() {
//		Ad ad = store.selectAdById(15);
//		ad.setApproval("Y");
//
//		store.approveAd(ad);
//	}
//
//	@Test
//	public void testUpdateAd() {
//
//		Ad ad = store.selectAdById(15);
//		
//		ad.setMeetingTitle("15th title, isn't it?");
//		ad.setContent("Can you understand?");
//
//		store.updateAd(ad);
//
//	}
//
//	@Test
//	public void testDeleteAd() {
//		store.deleteAd(16);
//	}
//
//	@Test
//	public void testSelectAdById() {
//		Ad ad = store.selectAdById(15);
//		System.out.println(ad.getMeetingTitle());
//	}
//
//	@Test
//	public void testSelectAdByEmail() {
//		Ad ad = store.selectAdByEmail("email@email.com").get(0);
//		System.out.println(ad.getMeetingTitle());
//	}
//
//	@Test
//	public void testSelectAdByPhoneNumber() {
//		Ad ad = store.selectAdByPhoneNumber("010").get(0);
//		System.out.println(ad.getMeetingTitle());
//		
//	}
//
//	@Test
//	public void testSelectAdByName() {
//		Ad ad = store.selectAdByName("이름15").get(0);
//		System.out.println(ad.getMeetingTitle());
//		
//	}

	@Test
	public void testSelectAllAd() {
		
//		List<Ad> ad = store.selectAllAd();
//		
//		for(int i=0; i<ad.size(); i++){
//			System.out.println("AD ID : " + ad.get(i).getAdId());
//			System.out.println("Meeting ID :" + ad.get(i).getMeetingId());
//			System.out.println("승인상태 : " +ad.get(i).getApproval());
//			System.out.println("이름 : " +ad.get(i).getName());
//			System.out.println("===============================");
//			System.out.println("");
//		}
		
		List<Ad> adLists = adStore.selectAllAd();
		System.out.println("찾은 AD의 개수는 : " + adLists.size() + "개 입니다.");
		List<Meeting> meetingLists = new ArrayList<>();
		
		for(int i = 0; i < adLists.size(); i++){
			
			int meetingId = adLists.get(i).getMeetingId(); // 광고가 등록된 meeting Id들을 찾아내서 mtId에 하나씩 입력해 준다.
			System.out.println(i+1 +" 번째 "  + "meeting ID : " + meetingId);
			
			Meeting meetingList = meetingStore.selectMeetingById(meetingId); // meetingList를 하나씩 찾아낸다.
			System.out.println("===============================");
			System.out.println(meetingList.getMeetingId());
			System.out.println(meetingList.getTitle());
			System.out.println(meetingList.getContent());
			System.out.println("===============================");
			
			meetingLists.add(meetingList); // 찾아낸 meetingList를 meetingLists에 한개씩 입력해 준다.
		}
		System.out.println("찾은 meeting 의 개수는 : " + meetingLists.size() + "개 입니다.");
	}

//	@Test
//	public void testSelectAdByDate() {
//		
//		Date startDate = new Date(117,4,10);
//		Date endDate = new Date(117,5,31);
//		List<Ad> ad = store.selectAdByDate(startDate, endDate);
//		System.out.println(ad.get(0).getMeetingId());
//		System.out.println(ad.get(0).getMeetingTitle());
//		System.out.println(ad.get(0).getName());
//	}
//
//	@Test
//	public void testSelectAdBySysdate() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAdByMeetingId() {
//		fail("Not yet implemented");
//	}

}

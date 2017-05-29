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

	@Test
	public void testInsertAd() {
		
		Ad ad = new Ad();
		Date startDate = new Date(117,4,10);
		Date endDate = new Date(117,5,31);
		
		ad.setMeetingId(527);
		ad.setAdId(3);
		ad.setEmail("광고주@email.com");
		ad.setName("내이름 쓰면 되는거냐?");
		ad.setPhoneNumber("전화번호따위는 없다.");
		ad.setProduct("완전무료");
		ad.setStartDate(startDate);
		ad.setEndDate(endDate);
		ad.setQuestion("이거 진짜 광고효과가 있는거냐?");

		adStore.insertAd(ad);
		
	}
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

//	@Test
//	public void testSelectAllAd() {
//		
//		List<Ad> adLists = adStore.selectAllAd();
//		System.out.println("찾은 AD의 개수는 : " + adLists.size() + "개 입니다.");
//		List<Meeting> meetingLists = new ArrayList<>();
//		
//		for(int i = 0; i < adLists.size(); i++){
//			
//			int meetingId = adLists.get(i).getMeetingId(); // 광고가 등록된 meeting Id들을 찾아내서 mtId에 하나씩 입력해 준다.
//			System.out.println(i+1 +" 번째 "  + "meeting ID : " + meetingId);
//			
//			Meeting meetingList = meetingStore.selectMeetingById(meetingId); // meetingList를 하나씩 찾아낸다.
//			System.out.println("===============================");
//			System.out.println(meetingList.getMeetingId());
//			System.out.println(meetingList.getTitle());
//			System.out.println(meetingList.getContent());
//			System.out.println("===============================");
//			
//			meetingLists.add(meetingList); // 찾아낸 meetingList를 meetingLists에 한개씩 입력해 준다.
//		}
//		System.out.println("찾은 meeting 의 개수는 : " + meetingLists.size() + "개 입니다.");
//	}

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

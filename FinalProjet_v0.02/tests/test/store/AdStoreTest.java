package test.store;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.Ad;
import moigo.store.AdStore;
import moigo.store.logic.AdStoreLogic;

public class AdStoreTest {
	
	private AdStore store;
	
	@Before
	public void setup(){
		store = new AdStoreLogic();
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

//	@Test
//	public void testSelectAllAd() {
//		
//		List<Ad> ad = store.selectAllAd();
//		System.out.println(ad.size());
//		System.out.println(ad.get(2).getPhoneNumber());
//		
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

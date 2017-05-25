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
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testUpdateAd() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testDeleteAd() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAdById() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAdByEmail() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAdByPhoneNumber() {
//		fail("Not yet implemented");
//	}
//
//	@Test
//	public void testSelectAdByName() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testSelectAllAd() {
		
		List<Ad> ad = store.selectAllAd();
		System.out.println(ad.size());
		System.out.println(ad.get(2).getPhoneNumber());
		
	}

//	@Test
//	public void testSelectAdByDate() {
//		fail("Not yet implemented");
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

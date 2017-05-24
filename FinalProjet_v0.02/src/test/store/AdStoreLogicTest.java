package test.store;

import static org.junit.Assert.*;

import java.util.List;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.junit.Test;

import moigo.domain.Ad;
import moigo.service.AdService;
import moigo.service.logic.AdServiceLogic;

public class AdStoreLogicTest {
	
	AdService service;

	public void setup(){
		service = new AdServiceLogic();
	}
	
	
	
	@Test
	public void test() {
		
		List<Ad> ad = service.searchAllAd();
		System.out.println(ad.size());
		System.out.println(ad.get(0).getPhoneNumber());
		
	}
	
//	@Test
//	public void testRegist(){
//		Ad ad = new Ad();
//		
//		ad.setAdId(2);
//		ad.setEmail("2ndmain@mail.com");
//		
//		service.registAd(ad);
//		
//	}

}

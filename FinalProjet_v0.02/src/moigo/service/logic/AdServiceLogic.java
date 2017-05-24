package moigo.service.logic;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moigo.domain.Ad;
import moigo.service.AdService;
import moigo.store.AdStore;

@Service
public class AdServiceLogic implements AdService{
	
	@Autowired
	private AdStore store;

	@Override
	public int registAd(Ad ad) {
		store.insertAd(ad); 
		return ad.getAdId();
	}

	@Override
	public int approveAd(Ad ad) {
		return 0;
	}

	@Override
	public int modifyAd(Ad ad) {
		return store.updateAd(ad);
	}

	@Override
	public boolean removeAd(int adId) {
		return store.deleteAd(adId);
	}

	@Override
	public Ad searchAdById(int adId) {
		return store.selectAdById(adId);
	}

	@Override
	public List<Ad> searchAdByphoneNumber(String phoneNumber) {
		return store.selectAdByPhoneNumber(phoneNumber);
	}

	@Override
	public List<Ad> searchAdByName(String name) {
		return store.selectAdByName(name);
	}

	@Override
	public List<Ad> searchAdByEmail(String email) {
		return store.selectAdByEmail(email);
	}

	@Override
	public List<Ad> searchAllAd() {
		return store.selectAllAd();
	}

	@Override
	public List<Ad> searchAdByDate(Date start, Date end) {
		return store.selectAdByDate(start, end);
	}

	@Override
	public List<Ad> searchAdBySysdata() {
		return store.selectAdBySysdate();
	}

	@Override
	public Ad searchAdByMeetingId(int meetingId) {
		return store.selectAdByMeetingId(meetingId);
	}
}

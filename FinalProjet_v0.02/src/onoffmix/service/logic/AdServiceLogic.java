package onoffmix.service.logic;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import onoffmix.domain.Ad;
import onoffmix.service.AdService;
import onoffmix.store.AdStore;

@Service
public class AdServiceLogic implements AdService{
	
	@Autowired
	private AdStore store;

	@Override
	public int registAd(Ad ad) {
		return 0;
	}

	@Override
	public int approveAd(Ad ad) {
		return 0;
	}

	@Override
	public int modifyAd(Ad ad) {
		return 0;
	}

	@Override
	public boolean removeAd(int adId) {
		return false;
	}

	@Override
	public Ad searchAdById(int adId) {
		return null;
	}

	@Override
	public List<Ad> searchAdByphoneNumber(String phoneNumber) {
		return null;
	}

	@Override
	public List<Ad> searchAdByName(String name) {
		return null;
	}

	@Override
	public List<Ad> searchAdByEmail(String email) {
		return null;
	}

	@Override
	public List<Ad> searchAllAd() {
		return null;
	}

	@Override
	public List<Ad> searchAdByDate(Date start, Date end) {
		return null;
	}

	@Override
	public List<Ad> searchAdBySysdata() {
		return null;
	}

	@Override
	public Ad searchAdByMeetingId(int meetingId) {
		return null;
	}

}

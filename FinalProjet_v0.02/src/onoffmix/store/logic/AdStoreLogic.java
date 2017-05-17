package onoffmix.store.logic;

import java.sql.Date;
import java.util.List;

import onoffmix.domain.Ad;
import onoffmix.store.AdStore;

public class AdStoreLogic implements AdStore{

	@Override
	public int insertAd(Ad ad) {
		return 0;
	}

	@Override
	public int approveAd(Ad ad) {
		return 0;
	}

	@Override
	public int updateAd(Ad ad) {
		return 0;
	}

	@Override
	public boolean deleteAd(int adId) {
		return false;
	}

	@Override
	public Ad selectAdById(int adId) {
		return null;
	}

	@Override
	public List<Ad> selectAdByEmail(String email) {
		return null;
	}

	@Override
	public List<Ad> selectAdByPhoneNumber(String phoneNumber) {
		return null;
	}

	@Override
	public List<Ad> selectAdByName(String name) {
		return null;
	}

	@Override
	public List<Ad> selectAllAd() {
		return null;
	}

	@Override
	public List<Ad> selectAdByDate(Date start, Date end) {
		return null;
	}

	@Override
	public List<Ad> selectAdBySysdate() {
		return null;
	}

	@Override
	public Ad selectAdByMeetingId(int meetingId) {
		return null;
	}
}

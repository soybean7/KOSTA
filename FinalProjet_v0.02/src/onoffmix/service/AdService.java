package onoffmix.service;

import java.sql.Date;
import java.util.List;

import onoffmix.domain.Ad;

// written SHKim at 20170517
public interface AdService {
	
	int registAd(Ad ad);
	
	int approveAd(Ad ad);
	
	int modifyAd(Ad ad);
	
	boolean removeAd(int adId);
	
	Ad searchAdById(int adId);
	
	List<Ad> searchAdByphoneNumber(String phoneNumber);
	
	List<Ad> searchAdByName(String name);
	
	List<Ad> searchAdByEmail(String email);
	
	List<Ad> searchAllAd();
	
	List<Ad> searchAdByDate(Date start, Date end);
	
	List<Ad> searchAdBySysdata();
	
	Ad searchAdByMeetingId(int meetingId);

}

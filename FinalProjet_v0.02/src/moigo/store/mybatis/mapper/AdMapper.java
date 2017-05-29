package moigo.store.mybatis.mapper;

import java.sql.Date;
import java.util.List;

import moigo.domain.Ad;

public interface AdMapper {
	
	int insertAd(Ad ad);
	
	int approveAd(Ad ad);
	
	int updateAd(Ad ad);
	
	boolean deleteAd(int adId);
	
	Ad selectAdById(int adId);
	
	List<Ad> selectAdByEmail(String email);
	
	List<Ad> selectAdByPhoneNumber(String phoneNumber);
	
	List<Ad> selectAdByName(String name);
	
	List<Ad> selectAllAd();
	
	List<Ad> selectAdByDate(Date start, Date end);
	
	List<Ad> selectAdBySysdate();
	
	Ad selectAdByMeetingId(int meetingId);

}
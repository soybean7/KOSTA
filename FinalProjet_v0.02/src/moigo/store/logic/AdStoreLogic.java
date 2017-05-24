package moigo.store.logic;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import moigo.domain.Ad;
import moigo.store.AdStore;
import moigo.store.mybatis.MoigoSessionFactory;
import moigo.store.mybatis.mapper.AdMapper;

@Repository
public class AdStoreLogic implements AdStore{
	

	@Override
	public int insertAd(Ad ad) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		mapper.insertAd(ad);
		session.close();

		return ad.getAdId();
	}

	@Override
	public int approveAd(Ad ad) {
		
		return 0;
	}

	@Override
	public int updateAd(Ad ad) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		int updateCount = mapper.updateAd(ad);
		session.close();
		return updateCount;
	}

	@Override
	public boolean deleteAd(int adId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		boolean deleteCount = mapper.deleteAd(adId);
		session.close();
		return deleteCount;
	}

	@Override
	public Ad selectAdById(int adId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		Ad ad= mapper.selectAdById(adId);
		session.close();
		return ad;
	}

	@Override
	public List<Ad> selectAdByEmail(String email) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAdByEmail(email);
		session.close();
		return list;
	}

	@Override
	public List<Ad> selectAdByPhoneNumber(String phoneNumber) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAdByPhoneNumber(phoneNumber);
		session.close();
		return list;
	}

	@Override
	public List<Ad> selectAdByName(String name) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAdByName(name);
		session.close();
		return list;
	}

	@Override
	public List<Ad> selectAllAd() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAllAd();
		session.close();
		return list;
	}

	@Override
	public List<Ad> selectAdByDate(Date start, Date end) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAllAd();
		session.close();
		return list;
	}

	@Override
	public List<Ad> selectAdBySysdate() {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		List<Ad> list = mapper.selectAdBySysdate();
		session.close();
		return list;
	}

	@Override
	public Ad selectAdByMeetingId(int meetingId) {
		SqlSession session = MoigoSessionFactory.getInstance().getSession();
		AdMapper mapper = session.getMapper(AdMapper.class);
		
		Ad ad = mapper.selectAdByMeetingId(meetingId);
		session.close();
		return ad;
	}
}

package onoffmix.controller.web;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import onoffmix.domain.Ad;
import onoffmix.service.AdService;

@Controller
public class AdController {
	
	@Autowired
	private AdService service;
	
	public String registAd(Ad ad, HttpSession  Session, Model model){
		return null;
	}
	
	public String approvedAd(String adId, Model model){
		return null;
	}
	
	public String showModifyAd(int adId, Model  model){
		return null;
	}
	
	public String modifyAd(Ad ad, Model  model){
		return null;
	}
	
	public Boolean deleteAd(int adId){
		return null;
	}
	
	public String searchByAdId(int adId, Model  model){
		return null;
	}
	
	public String searchAll(Model model){
		return null;
	}
	
	public String searchAdByPhoneNumber(String phoneNumber, Model  model){
		return null;
	}
	
	public String searchAdByEmail(String email, Model  model){
		return null;
	}
	
	public String searchAdByName(String name, Model  model){
		return null;
	}
	
	public String searchAdByMeetingId(String meetingId, Model  model){
		return null;
	}
	
	public String searchAdByDate(Date date, Model  model){
		return null;
	}
	
	public String searchAdBySysdate(Model model){
		return null;
	}

}

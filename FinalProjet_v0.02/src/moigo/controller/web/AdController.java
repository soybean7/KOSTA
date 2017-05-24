package moigo.controller.web;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import moigo.domain.Ad;
import moigo.service.AdService;

@Controller
@RequestMapping("Ad")
public class AdController {
	
	@Autowired
	private AdService service;
	
	@RequestMapping(value="registAd.do")
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
	
	@RequestMapping("AdListAll.do")
	public String searchAll(Model model){
		List<Ad> adLists = service.searchAllAd();
		model.addAttribute("adLists", adLists); // ("좌" : jsp, "우" : DB에서 가져온 값 )
		return "team/AdList";
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

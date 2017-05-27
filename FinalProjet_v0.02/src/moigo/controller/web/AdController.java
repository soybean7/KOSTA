package moigo.controller.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import moigo.domain.Ad;
import moigo.domain.Meeting;
import moigo.service.AdService;
import moigo.service.MeetingService;

@Controller
@RequestMapping("/Ad") // web page 주소 끝에 추가해 주기 위한 값. 임의로 정해도 상관없다.
public class AdController {
	
	@Autowired
	private AdService adService;
	
	@Autowired
	private MeetingService meetingService; 
	
	@RequestMapping(value="/registAd.do", method=RequestMethod.GET)
	public String registAdScreen(Ad ad, HttpSession  session, Model model){
		//사용자가 meeting page 광고등록을 클릭했을 때 전해준 meetingID
		int meetingId = (int)session.getAttribute("meetingId");
		
		Meeting meeting = meetingService.searchMeetingById(meetingId);
		model.addAttribute("meeting", meeting);
		return "Advertisement/AdRegist";
	}
	
	@RequestMapping(value="/registAd.do", method=RequestMethod.POST)
	public String registAd(Ad ad, HttpSession session, Model model){
		
		Ad recv = ad;
		recv.setName((String)session.getAttribute("name"));
		recv.setEmail((String)session.getAttribute("email"));
		recv.setPhoneNumber((String)session.getAttribute("phoneNumber"));
		recv.setStartDate((Date)session.getAttribute("startDate"));
		recv.setEndDate((Date)session.getAttribute("endDate"));
		recv.setProduct((String)session.getAttribute("product"));
		recv.setQuestion((String)session.getAttribute("question"));
		
		int result = adService.registAd(recv);
		System.out.println(result);
		
		model.addAttribute("Ad", recv);
		
		return "Advertisement/AdDetail";
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
	
	@RequestMapping(value="/AdListAll.do", method=RequestMethod.GET)
	public String searchAll(Model model){
		List<Ad> adLists = adService.searchAllAd();
		List<Meeting> meetingLists = new ArrayList<>();
		
		for(int i = 0; i < adLists.size(); i++){
			
			int mtId = adLists.get(i).getMeetingId(); // 광고가 등록된 meeting Id들을 찾아내서 mtId에 하나씩 입력해 준다.
			System.out.println(i+1 +" 번째 "  + "meeting ID : " + mtId);
			
			Meeting meetingList = meetingService.searchMeetingById(mtId); // meetingList를 하나씩 찾아낸다.
			meetingLists.add(meetingList); // 찾아낸 meetingList를 meetingLists에 한개씩 입력해 준다.
		}
		
		model.addAttribute("adLists", adLists); // ("좌" : jsp, "우" : DB에서 가져온 값 )
		model.addAttribute("meetingLists", meetingLists);
		
		return "Advertisement/AdList";
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
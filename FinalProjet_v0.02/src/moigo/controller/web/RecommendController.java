package moigo.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import moigo.domain.Meeting;
import moigo.service.RecommendService;

@Controller
public class RecommendController {
	
	@Autowired
	private RecommendService service;
	
	@RequestMapping(value="registRecommend.do", method=RequestMethod.POST)
	public String registRecommend(Meeting meeting, HttpSession session, Model model){
/*		service.registMeeting(meeting);*/
		System.out.println("controller");
		return "recommend/recommendList";
	}
	
	public String showModifyRecommend(int meetingId, Model model){
		return null;
	}
	
	public String modifyRecommend(Meeting meeting, Model model){
		return null;
	}
	
	public String deleteRecommend(int meetingId){
		return null;
	}
	
	public String datailRecommend(int meetingId, Model model){
		return null;
	}
	
	public String searchAll(Model model){
		return null;
	}
	
	public String searchById(int meetingId, Model model){
		return null;
	}
	
	public String searchByName(String name, Model model){
		return null;
	}
	
	public String searchByRegion(String region, Model model){
		return null;
	}
	
	public String searchByHashtag(String hashtag, Model model){
		return null;
	}
	
	public String searchByCategory(String category, Model model){
		return null;
	}
	
	public String loveRecommend(int meetingId, Model model){
		return null;
	}
	
	public String selectLoveRecommendBySort(String sortType, Model model){
		return null;
	}
	
	public String selectLoveRecommendByUsermail(String email, Model model){
		return null;
	}


}

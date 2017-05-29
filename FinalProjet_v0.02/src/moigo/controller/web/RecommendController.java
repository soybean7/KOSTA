package moigo.controller.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import moigo.domain.Meeting;
import moigo.service.RecommendService;

@Controller
@RequestMapping("recommend")
public class RecommendController {
	
	@Autowired
	private RecommendService service;

	
//	@RequestMapping(value="showRegistRecommend.do", method=RequestMethod.GET)
//	public String showRegistRecommend(Model model){
//		List<String> category = service.showRegistMeeting();
//		
//		model.addAttribute("category",category);
//		return "recommend/recommendRegist";
//	}
	
	@RequestMapping(value="registRecommend.do", method=RequestMethod.POST)
	public String registRecommend(Meeting meeting, HttpSession session, HttpServletRequest request, Model model){

		int modify = service.registMeeting(meeting);
		System.out.println(modify);
		return "recommend/recommendList";
	}
	
//	@RequestMapping(value="showModifyRecommend.do", method=RequestMethod.GET)
//	public String showModifyRecommend(int meetingId, Model model){
//		
//		Meeting meeting = service.searchMeetingById(meetingId);
//		List<String> hashtags = service.searchHashtagForMeeting(meetingId);
//		meeting.setHashtags(hashtags);
//		model.addAttribute("meeting",meeting);
//		return "recommend/recommendModify";
//	}
	
	@RequestMapping(value="modifyRecommend.do" , method=RequestMethod.POST)
	public String modifyRecommend(Meeting meeting, Model model){
		
		service.modifyMeeting(meeting);
		return "recommend/recommendList";//디테일로 가야된다
	}
	
	@RequestMapping(value="deleteRecommend.do" , method=RequestMethod.GET)
	public String deleteRecommend(int meetingId){
		service.removeMeeting(meetingId);
		return "recommend/recommendList";
	}
	
	@RequestMapping(value="datailRecommend.do", method=RequestMethod.GET)
	public String datailRecommend(int meetingId, Model model){
	
		return null;
	}
	@RequestMapping(value="list.do")
	public String searchAll(Model model){
		List<Meeting> recommendMeetings = service.searchAllMeeting();
		model.addAttribute("recommendMeetings", recommendMeetings);

		return "recommend/recommendList";
	}
	
	@RequestMapping(value="detail.do")
	public String searchById(int meetingId, Model model, HttpSession session){
 
//		------------------------------------------------------------------------------------------------
//		유저정보 임의 작성(삭제해야함)
		session.setAttribute("userEmail", "somiTest");
//		------------------------------------------------------------------------------------------------		
		
//		제안모임 정보 가져오기
		Meeting meeting = service.searchMeetingById(meetingId);
		model.addAttribute("meeting", meeting);

		String userEmail = (String)session.getAttribute("userEmail");
		if(userEmail != null){
//			로그인 했을 경우
			
//			유저의 찜 정보 가져오기
			List<String> users = service.searchLoveUserById(meetingId);
			for(String user : users){
				if(user.equals(userEmail)){
					model.addAttribute("exist", "exist");
				}
			}
		}else{
//			로그인 안 했을 경우
			System.out.println("로그인 필요");
//			------------------------------------------------------------------------------------------------
//			로그인 페이지로 이동(수정필요)
			return "user/login.do";
//			------------------------------------------------------------------------------------------------			
		}

		
		return "recommend/recommendDetail";
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
	
	@RequestMapping(value="love.do")
	public String loveRecommend(int meetingId, Model model, HttpSession session){
		
		System.out.println("love.do");

//		------------------------------------------------------------------------------------------------
//		유저정보 임의 작성(삭제해야함)
		session.setAttribute("userEmail", "somiTest");
//		------------------------------------------------------------------------------------------------
		
		String userEmail = (String)session.getAttribute("userEmail");
		
		Meeting meeting = service.searchMeetingById(meetingId);
		int loveCount = meeting.getSympathy();
		
		if(service.loveMeeting(meetingId, userEmail)){
//			찜추가
//			모임 추천수 +1
			meeting.setSympathy(loveCount+1);
//			------------------------------------------------------------------------------------------------			
//			모임 업데이트
//			------------------------------------------------------------------------------------------------			
		}else {
//			이미 찜 되어있던 경우
//			찜 삭제
			service.hateMeeting(meetingId, userEmail);
//			모임 추천수 -1
			meeting.setSympathy(loveCount-1);
//			------------------------------------------------------------------------------------------------			
//			모임 업데이트
//			------------------------------------------------------------------------------------------------
		}

		return "redirect:/recommend/detail.do?meetingId="+meetingId;
	}
	
	public String selectLoveRecommendBySort(String sortType, Model model){
		return null;
	}
	
	public String selectLoveRecommendByUsermail(String email, Model model){
		return null;
	}


}

package moigo.controller.web;

import java.util.List;

import javax.servlet.http.HttpSession;

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

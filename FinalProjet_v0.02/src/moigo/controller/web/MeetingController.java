package moigo.controller.web;

import java.sql.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import moigo.domain.Meeting;
import moigo.service.MeetingService;
import moigo.utill.FileUtils;

@Controller
@RequestMapping("/meeting")
public class MeetingController {
	
	@Autowired
	private MeetingService meetingService;
	
	private FileUtils fileUtils = new FileUtils();
	
	@RequestMapping(value="registMeeting.do", method=RequestMethod.POST)
	public String registMeeting(Meeting meeting, HttpServletRequest request, HttpSession session, Model model) throws Exception{
		Meeting registMeeting = meeting;
		
		registMeeting.setImage(fileUtils.parseInsertFileInfo(request));
		registMeeting.setRegUser((String)session.getAttribute("userEmail"));
		
		int id = meetingService.registMeeting(registMeeting);
		Meeting printMeeting = meetingService.searchMeetingById(id);
				
		model.addAttribute("meeting", printMeeting);
		
		
		return "meeting/meetingDetail";
	}
	
	@RequestMapping(value="/registMeeting.do", method=RequestMethod.GET)
	public String showRegistMeeting(Model model) {
		List<String> category = meetingService.searchCategory();
		model.addAttribute("category", category);
		
		return "meeting/meetingRegist";
	}
	
	public String showModifyMeeting(int meetingId, Model model){
		return null;
	}
	
	public String modifyMeeting(Meeting meeting, Model model){
		return null;
	}
	
	public String deleteMeeting(int meetingId, Model model){
		return null;
	}
	
	public String detailMeeting(int meetingId, Model model){
		return null;
	}
	
	public String searchAll(Model model){
		return null;
	}
	
	public String searchById(int meetingId, Model model){
		return null;
	}
	
	public String searchByTitle(String title, Model model){
		return null;
	}
	
	public String searchByDate(Date date, Model model){
		return null;
	}
	
	public String searchByPlace(String place, Model model){
		return null;
	}
	
	public String searchByCategory(String category, Model model){
		return null;
	}
	
	public String searchByHashtag(String hashtag, Model model){
		return null;
	}
	
	public String reportMeeting(int meetingId, String reportReason, Model model){
		return null;
	}
	
	public String searchAllReportMeeting(Model model){
		return null;
	}
	
	public String seachReportMeetingByTitle(String title, Model model){
		return null;
	}
	
	public List<Meeting> searchRequestMeeting(String email, Model model){
		return null;
	}
	
	public List<Meeting> searchDoneMeeting(String email, Model model){
		return null;
	}
	
	public void cancelRequestMeeting(int meetingId, HttpSession session){
		
	}

}

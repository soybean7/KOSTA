package moigo.controller.web;

import java.sql.Date;
import java.util.ArrayList;
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
import moigo.domain.Paging;
import moigo.domain.User;
import moigo.service.MeetingService;
import moigo.service.UserService;
import moigo.utill.FileUtils;

@Controller
@RequestMapping("/meeting")
public class MeetingController {

	@Autowired
	private MeetingService meetingService;

	@Autowired
	private UserService userService;

	private FileUtils fileUtils = new FileUtils();

	@RequestMapping(value = "/registMeeting.do", method = RequestMethod.POST)
	public String registMeeting(Meeting meeting, HttpServletRequest request, HttpSession session, Model model)
			throws Exception {

		meeting.setImage(fileUtils.parseInsertFileInfo(request));
		meeting.setRegUser((String) session.getAttribute("userEmail"));
		meeting.setRegUser("뀨");
		for (String temp : meeting.getHashtags()) {
			int hashtagId = meetingService.checkHashtag(temp);
			if (hashtagId == -1) {
				meetingService.registHashtag(temp);
			} else {
				meetingService.registMeetingHashtag(meeting.getMeetingId(), hashtagId);
			}
		}
		int id = meetingService.registMeeting(meeting);
		meetingService.registMeetingCategory(meeting.getMeetingId(), meeting.getCategory());
		Meeting printMeeting = meetingService.searchMeetingById(id);
		List<String> meetingUser = meetingService.searchMeetingUserByMeetingId(printMeeting.getMeetingId());
		User user = userService.searchUser(printMeeting.getRegUser());

		model.addAttribute("meeting", printMeeting);
		model.addAttribute("meetingUser", meetingUser.size());
		model.addAttribute("user", user);

		return "meeting/meetingDetail";
	}

	@RequestMapping(value = "/registMeeting.do", method = RequestMethod.GET)
	public String showRegistMeeting(Model model, HttpSession session) {
		User user = (User)session.getAttribute("loginedUser");
		if(user == null) {
			return "login/login";
		}
		List<String> category = meetingService.searchCategory();
		model.addAttribute("category", category);

		return "meeting/meetingRegist";
	}

	@RequestMapping(value = "/showModifyMeeting.do", method = RequestMethod.GET)
	public String showModifyMeeting(int meetingId, Model model) {
		Meeting meeting = meetingService.searchMeetingById(meetingId);
		List<String> categoryAll = meetingService.searchCategory();
		String myCategory = meetingService.searchMyCategory(meetingId);

		model.addAttribute("meeting", meeting);
		model.addAttribute("category", categoryAll);
		model.addAttribute("myCategory", myCategory);

		return "meeting/meetingModify2";
	}

	@RequestMapping(value = "/modifyMeeting.do", method = RequestMethod.POST)
	public String modifyMeeting(Meeting meeting, Model model) {
		meetingService.modifyMeeting(meeting);

		Meeting printMeeting = meetingService.searchMeetingById(meeting.getMeetingId());
		List<String> meetingUser = meetingService.searchMeetingUserByMeetingId(printMeeting.getMeetingId());
		User user = userService.searchUser(printMeeting.getRegUser());

		model.addAttribute("meeting", printMeeting);
		model.addAttribute("meetingUser", meetingUser.size());
		model.addAttribute("user", user);

		return "meeting/meetingDetail";
	}

	@RequestMapping(value = "/deleteMeeting.do", method = RequestMethod.GET)
	public String deleteMeeting(int meetingId, Model model) {
		meetingService.removeMeeting(meetingId);
		List<Meeting> meetingList = meetingService.searchAllMeeting();

		model.addAttribute("meetingList", meetingList);

		return "main/mainPage";
	}
	
	@RequestMapping(value = "/deleteMeetingControl.do", method = RequestMethod.GET)
	public String showDeleteMeetingControl(int meetingId, Model model, HttpSession session) {
		User user = (User)session.getAttribute("loginedUser");
		if(user == null) {
			return "login/login";
		}
		meetingService.removeMeeting(meetingId);
		List<Meeting> meetingList = meetingService.searchAllMeeting();

		model.addAttribute("meetingList", meetingList);

		return "meeting/meetingDelete";
	}

	@RequestMapping(value = "/detailMeeting.do", method = RequestMethod.GET)
	public String detailMeeting(int meetingId, Model model) {
		Meeting printMeeting = meetingService.searchMeetingById(meetingId);
		List<String> meetingUser = meetingService.searchMeetingUserByMeetingId(printMeeting.getMeetingId());
		User user = userService.searchUser(printMeeting.getRegUser());

		model.addAttribute("meeting", printMeeting);
		model.addAttribute("meetingUser", meetingUser.size());
		model.addAttribute("user", user);

		return "meeting/meetingDetail";
	}

	@RequestMapping(value = "/meetingSearchAll.do", method = RequestMethod.GET)
	public String searchAll(Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchAllMeeting();
		List<Meeting> pagingList = new ArrayList<>();
		int pageSize = 3;
		Paging paging = new Paging();

		try {
			if (request.getParameter("pageNo").equals("")) {
				paging.setPageNo(1);
			} else {
				paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		}

		paging.setPageSize(pageSize);
		paging.setTotalCount(meetingList.size());

		for (int i = (paging.getPageNo() - 1)
				* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo()) ? meetingList.size()
						: paging.getPageSize() * (paging.getPageNo())); i++) {
			pagingList.add(meetingList.get(i));
		}

		model.addAttribute("requestMapping", "meetingSearchAll.do?");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);

		return "main/mainPage";
	}

	@RequestMapping(value = "/meetingHome.do", method = RequestMethod.GET)
	public String meetingHome(Model model, HttpServletRequest request, HttpSession session) {
		User user = (User)session.getAttribute("loginedUser");
		if(user == null) {
			return "login/login";
		}
		
		List<Meeting> meetingList = meetingService.searchMeetingByEmail(user.getEmail());

		model.addAttribute("meetingList", meetingList);

		return "meeting/meetingHome";
	}

	@RequestMapping(value = "/searchMeetingByTitle.do", method = RequestMethod.POST)
	public String searchByTitle(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByTitle(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;

			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByTitle.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByTitle.do", method = RequestMethod.GET)
	public String searchByTitleGet(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByTitle(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}
		model.addAttribute("requestMapping", "meetingSearchByTitle.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByPlace.do", method = RequestMethod.POST)
	public String searchByPlace(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByPlace(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByPlace.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByPlace.do", method = RequestMethod.GET)
	public String searchByPlaceGet(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByPlace(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByPlace.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}
	
	@RequestMapping(value = "/searchMeetingByContent.do", method = RequestMethod.POST)
	public String searchByContent(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByContent(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByContent.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}
	
	@RequestMapping(value = "/searchMeetingByContent.do", method = RequestMethod.GET)
	public String searchByContentGet(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByContent(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByContent.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}
	

	@RequestMapping(value = "/searchMeetingByCategory.do", method = RequestMethod.POST)
	public String searchByCategory(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByCategory(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByCategory.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByCategory.do", method = RequestMethod.GET)
	public String searchByCategoryGet(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByCategory(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByCategory.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByHashtag.do", method = RequestMethod.POST)
	public String searchByHashtag(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByHashtag(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByHashtag.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value = "/searchMeetingByHashtag.do", method = RequestMethod.GET)
	public String searchByHashtagGet(String keyword, Model model, HttpServletRequest request) {
		List<Meeting> meetingList = meetingService.searchMeetingByHashtag(keyword);
		List<Meeting> pagingList = new ArrayList<>();
		Paging paging = new Paging();
		if (meetingList.size() != 0) {
			int pageSize = 3;
			
			try {
				if (request.getParameter("pageNo").equals("")) {
					paging.setPageNo(1);
				} else {
					paging.setPageNo(Integer.parseInt(request.getParameter("pageNo")));
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}

			paging.setPageSize(pageSize);
			paging.setTotalCount(meetingList.size());

			for (int i = (paging.getPageNo() - 1)
					* pageSize; i < (meetingList.size() < paging.getPageSize() * (paging.getPageNo())
							? meetingList.size() : paging.getPageSize() * (paging.getPageNo())); i++) {
				pagingList.add(meetingList.get(i));
			}
			
		} else {
			paging.setTotalCount(0);
		}

		model.addAttribute("requestMapping", "meetingSearchByHashtag.do?keyword=" + keyword + "&");
		model.addAttribute("meetingList", pagingList);
		model.addAttribute("paging", paging);
		return "main/mainPage";
	}

	@RequestMapping(value="/meeting/reportMeeting.do")
	public String reportMeeting(int meetingId, String reportReason, Model model) {
		return null;
	}

	public String searchAllReportMeeting(Model model) {
		return null;
	}

	public String seachReportMeetingByTitle(String title, Model model) {
		return null;
	}

	public List<Meeting> searchRequestMeeting(String email, Model model) {
		return null;
	}

	public List<Meeting> searchDoneMeeting(String email, Model model) {
		return null;
	}

	public void cancelRequestMeeting(int meetingId, HttpSession session) {

	}

}

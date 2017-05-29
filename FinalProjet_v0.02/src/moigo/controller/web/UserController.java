package moigo.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import moigo.domain.User;
import moigo.service.UserService;

@RequestMapping("user")
@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping("join")
	public String showJoinForm(){
		return "join.jsp";
	}
	
	@RequestMapping(value="join.do", method=RequestMethod.POST)
	public String registUser(User user, HttpServletRequest req){
		boolean registered = service.registUser(user);
		if(!registered){
			return "redirect:join";
		}
		User loginedUser = service.login(user);
		HttpSession session = req.getSession();
		session.setAttribute("loginedUser", loginedUser);
		return "redirect:mainPage";
	}
	
	@RequestMapping("login")
	public String showLoginForm(){
		return "login.jsp";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(User user, HttpServletRequest req){
		User loginedUser = service.login(user);
			
			if(loginedUser != null){
				HttpSession session = req.getSession();
				session.setAttribute("loginedUser", loginedUser);
			}else{
				HttpSession session = req.getSession(false);
				session.invalidate();
				}
			
				return "redirect:mainPage";
			}
	
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest req){
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:mainPage";
	}
	
	@RequestMapping(value="showModify.do", method=RequestMethod.GET)
	public String showModifyUser(HttpServletRequest req, Model model){
		User user = (User)req.getSession().getAttribute("loginedUser");
		model.addAttribute("user", user);
		return "user/userModify";
	}
	
	@RequestMapping(value="userModify.do", method=RequestMethod.POST)
	public String modifyUser(User user, Model model, HttpServletRequest req){
		model.addAttribute("user", user);
		service.modifyUser(user);
		HttpSession session = req.getSession();
		session.invalidate();
		session = req.getSession();
		session.setAttribute("loginedUser",user);
		
		return "redirect:myPage";
	}
	
	@RequestMapping("userDrop.do")
	public String deleteUser(HttpServletRequest req){
		User user = (User)req.getSession().getAttribute("loginedUser");
		service.removeUser(user.getEmail());
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:mainPage";
	}
	@RequestMapping(value="showMyPage.do", method=RequestMethod.GET)
	public String showMyPage(HttpServletRequest req, Model model){
		User user = (User)req.getSession().getAttribute("loginedUser");
		model.addAttribute("user", user);
		return "user/myPage";
	}
	
}

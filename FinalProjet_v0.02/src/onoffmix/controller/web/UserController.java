package onoffmix.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import onoffmix.domain.User;
import onoffmix.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	public String registUser(User user){
		return null;
	}
	
	public String login(User user, HttpSession session){
		return null;
	}
	
	public String showModifyUser(HttpSession session, Model model){
		return null;
	}
	
	public String modifyUser(User user, Model model){
		return null;
	}
	
	public Boolean deleteUser(HttpSession session, Model model){
		return null;
	}
	
	public String searchAllReportUser(Model model){
		return null;
	}
	
	public String searchByEmail(HttpSession session, Model model){
		return null;
	}
	
	public String searchByName(String name, Model model){
		return null;
	}
	
	public String searchReportUserByEmail(String email, Model model){
		return null;
	}
	
	public String searchReportUserByName(String name, Model model){
		return null;
	}
	
	public String reportUser(String email, String date){
		return null;
	}

}

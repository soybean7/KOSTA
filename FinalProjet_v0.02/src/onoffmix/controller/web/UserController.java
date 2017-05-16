package onoffmix.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("user")
public class UserController {
	
//	@Autowired
//	private UserService userService;

	@RequestMapping("login.do")
	public String login(HttpSession session, String inputEmail, String inputPassword) {
		return null;
	}
}


//@RequestMapping("regist.ajax")
//@ResponseBody 
//public ~~
//
//@RequestMapping(value = "regist.do", method = RequestMethod.POST)
//pubic ~~

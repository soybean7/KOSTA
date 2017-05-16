package onoffmix.controller.web;

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
	
	private String MCguilty;
	private String Usom;
	private String handsomeKang;
	private String wisdomLee;
	private String emotinalWords;
	
	public String loveLine(){
		String result;
		
		result = MCguilty +" feels fear when he tell " + Usom;
		
		String result12;
		
		return result;
	}
	
	public void printScreen(){
		System.out.println(loveLine());
	}
	
}


//@RequestMapping("regist.ajax")
//@ResponseBody 
//public ~~
//
//@RequestMapping(value = "regist.do", method = RequestMethod.POST)
//pubic ~~

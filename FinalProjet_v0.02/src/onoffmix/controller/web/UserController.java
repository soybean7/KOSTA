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
	
	private String MCGuilty;
	private String Usom;
	private String handsomeKang;
	private String wisdomLee;
	private String emotinalWords;
	
	public String loveLine(){

		String result;
		
		result = MCGuilty +" feels fear when he tell " + Usom;
		
		return result;
	}
	
	public void madnessForLove(){
		String result = "love is done.";
		System.out.println(result);
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

package onoffmix.controller.mobile;

import org.springframework.stereotype.Controller;

@Controller
public class UserController {
	
	private String MCguilty;
	private String Usom;
	private String handsomeKang;
	private String wisdomLee;
	private String emotinalWords;
	
	public String loveLine(){
		String result;
		
		result = MCguilty +" feels fear when he tell " + Usom;
		
		return result;
	}
	
	public void printScreen(){
		System.out.println(loveLine());
	}
	
}

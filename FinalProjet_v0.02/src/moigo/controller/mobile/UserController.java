package moigo.controller.mobile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import moigo.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
}
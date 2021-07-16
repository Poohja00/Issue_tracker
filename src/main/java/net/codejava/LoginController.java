package net.codejava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.codejava.service.LoginService;
@Controller
public class LoginController {
	@RequestMapping("/login")
	public String home() {
		System.out.println("Going home...");
		return "index";
	}
	@Autowired
	LoginService service=new LoginService();
	
	//Login as User

	@RequestMapping(value = "/loginasuser", method = RequestMethod.GET)
	public String showLoginpage(@ModelAttribute("login") User user) {

		return "login";
	}
	//Parameter check for user

	@RequestMapping(value = "/loginasuser", method = RequestMethod.POST)
	public String checkLoginDetails(@ModelAttribute("login")User user,@RequestParam String userId,@RequestParam String password) {

		
		return service.validateUser( userId,password) ? "loginsuccess" : "invalid";
	}
	
	//Logging Off For User
	
			@RequestMapping(value = "/logoff", method = RequestMethod.POST)
			public String LoggingOff(@ModelAttribute("login")Representative representative) {

				
				return "index";
			}

		
	
	//Login as Representative
	
	
	@RequestMapping(value = "/loginasrepresentative", method = RequestMethod.GET)
	public String showLoginpage1(@ModelAttribute("login") Representative representative) {

		return "representativelogin";
	}
	//Parameter check for Representative

	@RequestMapping(value = "/loginasrepresentative", method = RequestMethod.POST)
	public String checkLoginDetails1(@ModelAttribute("login")Representative representative,@RequestParam String rep,@RequestParam String password) {

		
		return service.validateRepresentative( rep,password) ? "loginsuccess" : "invalid";
	}
	
	//Logging Off For Representative
	
		@RequestMapping(value = "/logoff1", method = RequestMethod.POST)
		public String LoggingOff1(@ModelAttribute("login")Representative representative) {

			
			return "index";
		}

	
	//Login as Admin
	
	@RequestMapping(value = "/loginasadmin", method = RequestMethod.GET)
	public String showLoginpage2(@ModelAttribute("login") Admin admin1) {

		return "adminlogin";
	}
	//Parameter check for Admin
	
	@RequestMapping(value = "/loginasadmin", method = RequestMethod.POST)
	public String checkLoginDetails2(@ModelAttribute("login")Admin admin1,@RequestParam String admin,@RequestParam String password) {

		
		return service.validateAdmin( admin,password) ? "loginsuccess" : "invalid";
	}
	
	//Logging Off For Admin
	
	@RequestMapping(value = "/logoff2", method = RequestMethod.POST)
	public String LoggingOff2(@ModelAttribute("login")Admin admin1) {

		
		return "index";
	}

}


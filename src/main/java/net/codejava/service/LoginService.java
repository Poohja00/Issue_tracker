package net.codejava.service;

import org.springframework.stereotype.Service;
import net.codejava.User;
import net.codejava.Representative;
import net.codejava.Admin;

@Service

public class LoginService {
User user =new User();
Representative representative=new Representative();
Admin admin1 =new Admin();
	public boolean validateUser(String userId,String password) {
		return userId.equalsIgnoreCase(user.getUserId())&&password.equalsIgnoreCase(user.getPassword());
	}
	public boolean validateRepresentative(String rep,String password) {
		return rep.equalsIgnoreCase(representative.getRep())&&password.equalsIgnoreCase(representative.getPassword());
	}
	public boolean validateAdmin(String admin,String password) {
		return admin.equalsIgnoreCase(admin1.getAdmin())&&password.equalsIgnoreCase(admin1.getPassword());
	}
}

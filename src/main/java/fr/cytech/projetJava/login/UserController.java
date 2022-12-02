package fr.cytech.projetJava.login;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	public User user;

	@PostMapping("/checkUser")
	public String checkUser(HttpSession session, @RequestParam("username") String username, @RequestParam("password") String password) {
		String page = "redirect:login";
		User usr = userService.getByUsername(username);
		if (!Objects.isNull(usr)) {
			if (usr.getPassword().equals(password)) {
				page = "redirect:index";
				session.setAttribute("user", usr);
			}
		}
		return page;
	}

	@GetMapping("/login")
	public String login(Model model, HttpSession session) {
		if (user == null) {
			user = new User();
		}
		return "login";
	}
	
	@GetMapping("/register")
	public String register(Model model, HttpSession session) {
		return "register";
	}

	@PostMapping("/registerNewUser")
	public String registerNewUser(Model model,@RequestParam("username") String username,@RequestParam("password1") String password1,@RequestParam("password2") String password2) {
		String page = "redirect:register";
		if (password1.equals(password2)) {
			userService.createUser(username, password1);
			page = "redirect:index";
		}
		return page;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
}

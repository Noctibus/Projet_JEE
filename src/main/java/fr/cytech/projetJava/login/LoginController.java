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
public class LoginController {
	@Autowired
 	UserRepository userRepository;
	public User user;

	public String checkSessionUser(String goodPage, HttpSession session) {
		User user = (User)session.getAttribute("user");
		if(user != null) {
			return goodPage;
		}
		return "/login";
	}

	@PostMapping("/checkUser")
	public String checkUser(HttpSession session, @RequestParam("username") String username, @RequestParam("password") String password) {
		String page = "redirect:register";
		User usr = userRepository.findByUsername(username);
		if (!Objects.isNull(usr)) {
			if (usr.getPassword().equals(password)) {
				page = "redirect:logged";
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
	
	@GetMapping("/logged")
	public String logged(HttpSession session) {
		return checkSessionUser("logged", session);
	}
	
	@GetMapping("/register")
	public String register(Model model, HttpSession session) {
		return checkSessionUser("register", session);
	}

	@PostMapping("/registerNewUser")
	public String registerNewUser(Model model,@RequestParam("username") String username,@RequestParam("password1") String password1,@RequestParam("password2") String password2) {
		String page = "redirect:register";
		User usr = userRepository.findByUsername(user.getUsername());
		if (Objects.isNull(usr) && password1.equals(password2)) {
			user.setUsername(username);
			user.setPassword(password1);
			userRepository.save(user);

			page = "redirect:logged";
		}
		return page;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
}

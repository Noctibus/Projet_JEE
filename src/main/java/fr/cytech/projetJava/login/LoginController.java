package fr.cytech.projetJava.login;

import java.util.Objects;

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
	public User user = new User();

	public String check(User user) {
		String page = "notLogged2";
		boolean res = false;
		User usr = userRepository.findByUsername(user.getUsername());
		System.out.println("User = " + user);
		System.out.println("Usr  = " + usr);
		if (!Objects.isNull(usr)) {
			if (usr.getPassword().equals(user.getPassword())) {
				page = "logged";
			}
		}
		System.out.println("Page ====== " + page);
		System.out.println("Exists = " + res);
		return page;
	}

	@GetMapping("/login")
	public String login(Model model) {
		System.out.println(user);
		// model.addAttribute("user", user);
		return "login"; // page (html, xml ou autre) à afficher
	}
	
	@PostMapping("/logged")
	public String logged() {
		// System.out.println("+++++++++++++++++\nUsername = " + username);
		return "/logged";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		return "register";
	}

	@PostMapping("/registerNewUser")
	public String registerNewUser(Model model,@RequestParam("username") String username,@RequestParam("password1") String password1,@RequestParam("password2") String password2) {
		boolean res = true;
		String page = "register";
		User usr = userRepository.findByUsername(user.getUsername());
		if (!Objects.isNull(usr) || !password1.equals(password2)) {
			res = false;
		}
		if (res) {
			user.setUsername(username);
			user.setPassword(password1);
			userRepository.save(user);
			page = "logged";
		}
		return page;
	}
	
}

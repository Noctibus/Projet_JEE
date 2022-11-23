package fr.cytech.projetJava;

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
		String page = "notLogged";
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

	@GetMapping("/")
	public String logs(Model model) {
		return login(model);
	}

	@GetMapping("/login")
	public String login(Model model) {
		System.out.println(user);
		// model.addAttribute("user", user);
		return "login"; // page (html, xml ou autre) à afficher
	}
	@PostMapping("/logged")
	public String logging(@RequestParam("username") String username, @RequestParam("password") String password) {
		System.out.println("+++++++++++++++++\nUsername = " + username);
		user.setUsername(username);
		user.setPassword(password);
		return check(user);
	}

	@GetMapping(value="/register")
	public String register(Model model) {
		
		return "/register";
	}
	
}